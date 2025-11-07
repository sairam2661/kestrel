"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi1>, tensor<10x10xi1>) -> tensor<10x10xi1>, sym_name = "test_and"}> ({
  ^bb0(%arg0: tensor<10x10xi1>, %arg1: tensor<10x10xi1>):
    %0 = "onnx.And"(%arg0, %arg1) : (tensor<10x10xi1>, tensor<10x10xi1>) -> tensor<10x10xi1>
    "func.return"(%0) : (tensor<10x10xi1>) -> ()
  }) : () -> ()
}) : () -> ()

