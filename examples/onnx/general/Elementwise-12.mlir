"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi1>, tensor<10x10xi1>) -> tensor<*xi1>, sym_name = "test_xor", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x10xi1>, %arg1: tensor<10x10xi1>):
    %0 = "onnx.Xor"(%arg0, %arg1) : (tensor<10x10xi1>, tensor<10x10xi1>) -> tensor<*xi1>
    "func.return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

