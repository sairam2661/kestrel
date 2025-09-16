"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<f32>) -> (), sym_name = "test_unranked_equal"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<f32>):
    %0 = "tosa.equal"(%arg0, %arg1) : (tensor<*xf32>, tensor<f32>) -> tensor<*xi1>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

