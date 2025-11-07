"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi1>) -> tensor<*xi64>, sym_name = "test_nonzero"}> ({
  ^bb0(%arg0: tensor<2x2xi1>):
    %0 = "onnx.NonZero"(%arg0) : (tensor<2x2xi1>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

