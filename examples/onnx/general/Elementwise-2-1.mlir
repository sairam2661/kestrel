"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>, tensor<?x10xf32>) -> tensor<?x10xf32>, sym_name = "test_add_dynamic"}> ({
  ^bb0(%arg0: tensor<?x10xf32>, %arg1: tensor<?x10xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x10xf32>, tensor<?x10xf32>) -> tensor<?x10xf32>
    "func.return"(%0) : (tensor<?x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

