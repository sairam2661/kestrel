"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<1xi32>) -> (tensor<1xf32>, tensor<1xi32>), sym_name = "test_identity"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<1xi32>):
    %0 = "tosa.identity"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %1 = "tosa.identity"(%arg1) : (tensor<1xi32>) -> tensor<1xi32>
    "func.return"(%0, %1) : (tensor<1xf32>, tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

