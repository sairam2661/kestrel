"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>, tensor<5xf32>) -> tensor<5xf32>, sym_name = "tensor_shift_with_insert"}> ({
  ^bb0(%arg0: tensor<5xf32>, %arg1: tensor<5xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<5xf32>, index) -> f32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<5xf32>, index) -> f32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<5xf32>, index) -> f32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<5xf32>, index) -> f32
    %8 = "tensor.insert"(%4, %arg1, %3) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    %9 = "tensor.insert"(%5, %8, %0) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    %10 = "tensor.insert"(%6, %9, %1) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    %11 = "tensor.insert"(%7, %10, %2) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    "func.return"(%11) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()