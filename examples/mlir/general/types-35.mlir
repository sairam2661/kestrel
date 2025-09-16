"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi32>, tensor<*xf32>) -> (), sym_name = "same_element_types_success"}> ({
  ^bb0(%arg0: tensor<*xi32>, %arg1: tensor<*xf32>):
    %0 = "test.operand0_and_result_have_same_element_type"(%arg1, %arg0) : (tensor<*xf32>, tensor<*xi32>) -> tensor<*xf32>
    %1 = "test.operand0_and_result_have_same_element_type"(%arg1, %arg0) : (tensor<*xf32>, tensor<*xi32>) -> memref<2x3xf32>
    %2 = "test.operand0_and_result_have_same_element_type"(%arg1, %arg0) : (tensor<*xf32>, tensor<*xi32>) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

