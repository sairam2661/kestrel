"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>) -> tensor<?x10xf32>, sym_name = "test_dyn_abs"}> ({
  ^bb0(%arg0: tensor<?x10xf32>):
    %0 = "onnx.Abs"(%arg0) : (tensor<?x10xf32>) -> tensor<?x10xf32>
    "func.return"(%0) : (tensor<?x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

