"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xi32>) -> tensor<*xi32>, sym_name = "test_abs_int", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x10xi32>):
    %0 = "onnx.Abs"(%arg0) : (tensor<?x10xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

