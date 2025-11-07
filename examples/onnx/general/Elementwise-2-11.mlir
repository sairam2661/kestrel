"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xi1>, tensor<?x10xi1>) -> tensor<?x10xi1>, sym_name = "test_dyn_and"}> ({
  ^bb0(%arg0: tensor<?x10xi1>, %arg1: tensor<?x10xi1>):
    %0 = "onnx.And"(%arg0, %arg1) : (tensor<?x10xi1>, tensor<?x10xi1>) -> tensor<?x10xi1>
    "func.return"(%0) : (tensor<?x10xi1>) -> ()
  }) : () -> ()
}) : () -> ()

