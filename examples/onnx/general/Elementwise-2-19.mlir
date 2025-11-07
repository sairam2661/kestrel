"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x5xf32>, tensor<?x4x5xf32>) -> tensor<?x4x5xi1>, sym_name = "test_less_unknown_dims_2"}> ({
  ^bb0(%arg0: tensor<?x?x5xf32>, %arg1: tensor<?x4x5xf32>):
    %0 = "onnx.Less"(%arg0, %arg1) : (tensor<?x?x5xf32>, tensor<?x4x5xf32>) -> tensor<?x4x5xi1>
    "func.return"(%0) : (tensor<?x4x5xi1>) -> ()
  }) : () -> ()
}) : () -> ()

