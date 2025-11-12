"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>, sym_name = "tensor_interaction"}> ({
  ^bb0(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xf32>, index, index) -> f32
    %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    %4 = "tensor.insert"(%3, %arg1, %0, %1) : (f32, tensor<2x2xf32>, index, index) -> tensor<2x2xf32>
    %5 = "tensor.extract"(%arg0, %1, %1) : (tensor<2x2xf32>, index, index) -> f32
    %6 = "arith.subi"(%0, %0) : (index, index) -> index
    %7 = "arith.muli"(%6, %6) : (index, index) -> index
    %8 = "tensor.insert"(%5, %4, %7, %7) : (f32, tensor<2x2xf32>, index, index) -> tensor<2x2xf32>
    "func.return"(%8) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()