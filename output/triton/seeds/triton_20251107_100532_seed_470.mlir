"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "reduce_and_if"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "tt.reduce"(%2) <{operation = #tt_reduce_sum, type = tensor<64xi32>}> : (tensor<64xi32>) -> tensor<64xi32> region  .region 0
    :
      () -> tensor<64xi32> 
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_if"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = #arith_eq}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %3 = "scf.if"(%2) ({
      %4 = "tt.global_scratch_alloc"() <{size = 256 : i32}> : () -> i32
      %5 = "tt.addptr"(%4, %1) : (i32, tensor<64xi32>) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "tt.global_scratch_alloc"() <{size = 512 : i32}> : () -> i32
      %7 = "tt.addptr"(%6, %0) : (i32, tensor<64xi32>) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (tensor<64xi1>) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "nested_reduce_if"}> ({
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "tt.reduce"(%2) <{operation = #tt_reduce_sum, type = tensor<32xi32>}> : (tensor<32xi32>) -> tensor<32xi32> region  .region 0
    :
      () -> tensor<32xi32> 
    %4 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
    %5 = "arith.cmpi"(%3, %4) <{predicate = #arith_lt}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %6 = "scf.if"(%5) ({
      %7 = "tt.global_scratch_alloc"() <{size = 1024 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      %8 = "tt.global_scratch_alloc"() <{size = 2048 : i32}> : () -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (tensor<32xi1>) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "expand_and_if"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "tt.expand_dims"(%0) <{dim = 0}> : (tensor<32xi32>) -> tensor<1x32xi32>
    %2 = "arith.constant"() <{value = dense<0> : tensor<1x32xi32>}> : () -> tensor<1x32xi32>
    %3 = "arith.cmpi"(%1, %2) <{predicate = #arith_eq}> : (tensor<1x32xi32>, tensor<1x32xi32>) -> tensor<1x32xi1>
    %4 = "scf.if"(%3) ({
      %5 = "tt.global_scratch_alloc"() <{size = 512 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "tt.global_scratch_alloc"() <{size = 1024 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (tensor<1x32xi1>) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "call_and_if"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    "tt.call"(%0) <{callee = @nested_reduce_if}> : (i32) -> ()
    %1 = "tt.call"(%0) <{callee = @complex_if}> : (i32) -> i32
    %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2) <{predicate = #arith_lt}> : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
      "scf.yield"() : () -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()