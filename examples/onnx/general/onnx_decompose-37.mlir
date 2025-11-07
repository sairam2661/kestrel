"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi64>) -> tensor<*xi32>, sym_name = "test_constantofshape"}> ({
  ^bb0(%arg0: tensor<?xi64>):
    %0 = "onnx.ConstantOfShape"(%arg0) {value = dense<1> : tensor<1xi32>} : (tensor<?xi64>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

