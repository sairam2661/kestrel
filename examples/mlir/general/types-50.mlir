"builtin.module"() ({
  "func.func"() <{function_type = (tensor<36xi32>, tensor<1x2xf32>, tensor<f32>) -> (), sym_name = "same_element_count_success"}> ({
  ^bb0(%arg0: tensor<36xi32>, %arg1: tensor<1x2xf32>, %arg2: tensor<f32>):
    %0 = "test.operand0_and_result_have_same_element_count"(%arg0, %arg1) : (tensor<36xi32>, tensor<1x2xf32>) -> tensor<3x4x3xf32>
    %1 = "test.operand0_and_result_have_same_element_count"(%arg0, %arg1) : (tensor<36xi32>, tensor<1x2xf32>) -> tensor<3x12xf64>
    %2 = "test.operand0_and_result_have_same_element_count"(%arg2, %arg1) : (tensor<f32>, tensor<1x2xf32>) -> memref<1x1x1xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

