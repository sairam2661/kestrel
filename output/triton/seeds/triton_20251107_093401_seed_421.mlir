"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16x16xi8>) -> i32, sym_name = "tensor_reduce_example"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16x16xi8>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "tt.reduce"(%arg1, %0) <{operation = "add"}> ({
    ^bb1(%arg2: i32, %arg3: i8):
      %3 = "arith.addi"(%arg2, %arg3) : (i32, i8) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (tensor<16x16xi8>, i32) -> i32
    "tt.return"(%2) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> tensor<32xi32>, sym_name = "range_and_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "tt.make_range"() <{start = 0 : i32, end = 32 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<32xi32>, i32) -> tensor<32xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<32xi1>, tensor<32xi32>, i32) -> tensor<32xi32>
    "tt.return"(%3) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()