"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "scf.for"(%1, %3, %2, %0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %5 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi32>, index) -> i32
      %6 = "tensor.extract"(%arg1, %arg2) : (tensor<4xi32>, index) -> i32
      %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "arith.addi"(%7, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) {lower = 0 : i64, upper = 4 : i64} : (index, index, index, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()