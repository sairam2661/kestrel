"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_select_reduce"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %2:2 = "scf.if"(%0) ({
      %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_warning}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%3) : (tensor<32xi32>) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_warning}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%3) : (tensor<32xi32>) -> ()
    }) : (i32) -> (tensor<32xi32>)
    %4 = "arith.cmpi"(%2#0, %arg2) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.select"(%4, %2#0, %arg2) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6:2 = "tt.reduce"(%5, %1) <{operation = #tt_reduce_add, type = tensor<32xi32>}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%6#0) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()