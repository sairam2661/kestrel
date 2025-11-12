"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, i32) -> tensor<10x10xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %10 = "tensor.insert"(%arg1, %arg0, %0, %1) : (i32, tensor<10x10xi32>, index, index) -> tensor<10x10xi32>
    %11 = "tensor.insert"(%arg1, %10, %2, %3) : (i32, tensor<10x10xi32>, index, index) -> tensor<10x10xi32>
    %12 = "tensor.insert"(%arg1, %11, %4, %5) : (i32, tensor<10x10xi32>, index, index) -> tensor<10x10xi32>
    %13 = "tensor.insert"(%arg1, %12, %6, %7) : (i32, tensor<10x10xi32>, index, index) -> tensor<10x10xi32>
    %14 = "tensor.insert"(%arg1, %13, %8, %9) : (i32, tensor<10x10xi32>, index, index) -> tensor<10x10xi32>
    "func.return"(%14) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()