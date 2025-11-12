"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0, %1) : (tensor<3x3xi32>, index, index) -> i32
    %4 = "arith.addi"(%3, %2) : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0, %0) : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
    %6 = "tensor.extract"(%arg1, %1, %2) : (tensor<3x3xi32>, index, index) -> i32
    %7 = "arith.muli"(%6, %2) : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg1, %1, %1) : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
    %9 = "arith.select"(%3, %4, %7) : (i32, i32, i32) -> i32
    %10 = "tensor.insert"(%9, %arg0, %2, %2) : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
    "func.return"(%10) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()