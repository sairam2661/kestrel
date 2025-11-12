"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, i16) -> tensor<2x3xi32>, sym_name = "tensor_extract_insert"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: i16):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, 0, 0) : (tensor<2x3xi32>, index, index) -> i32
    %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor.insert"(%2, %arg0, 0, 0) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
    %4 = "arith.constant"() <{value = 15 : i16}> : () -> i16
    %5 = "arith.select"(%arg1, %4, %2) <{}> : (i16, i32, i32) -> i32
    %6 = "tensor.insert"(%5, %3, 1, 2) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
    "func.return"(%6) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()