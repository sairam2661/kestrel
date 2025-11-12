"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "test_mixed_arithmetic_tensor"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%arg1, %1) : (i32, i32) -> i32
    %4 = "arith.mulf"(%3, %2) : (i32, i32) -> i32
    %5 = "tensor.extract"(%arg0, 0) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, 0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()