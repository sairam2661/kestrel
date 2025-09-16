"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi32>, tensor<*xf32>) -> (), sym_name = "same_types"}> ({
  ^bb0(%arg0: tensor<*xi32>, %arg1: tensor<*xf32>):
    "test.operands_have_same_type"(%arg0, %arg0) : (tensor<*xi32>, tensor<*xi32>) -> ()
    %0 = "test.operand0_and_result_have_same_type"(%arg0, %arg1) : (tensor<*xi32>, tensor<*xf32>) -> tensor<*xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

