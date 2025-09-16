"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<*xf32>, sym_name = "test_multiple"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<4xf32>, tensor<1xf32>) -> tensor<*xf32>
    %1 = "tosa.log"(%0) : (tensor<*xf32>) -> tensor<*xf32>
    %2 = "tosa.sub"(%0, %arg2) : (tensor<*xf32>, tensor<1xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

