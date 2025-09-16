"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<1xf32>) -> (), sym_name = "test_binary_scalar_f32"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<1xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xf32>
    %1 = "tosa.maximum"(%arg0, %arg1) <{nan_mode = "PROPAGATE"}> : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xf32>
    %2 = "tosa.minimum"(%arg0, %arg1) <{nan_mode = "PROPAGATE"}> : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xf32>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.mul"(%arg0, %arg1, %3) : (tensor<4xf32>, tensor<1xf32>, tensor<1xi8>) -> tensor<*xf32>
    %5 = "tosa.pow"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xf32>
    %6 = "tosa.sub"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xf32>
    %7 = "tosa.equal"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xi1>
    %8 = "tosa.greater"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xi1>
    %9 = "tosa.greater_equal"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xi1>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

