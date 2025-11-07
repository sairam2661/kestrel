"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi16>, tensor<10x10xi16>) -> tensor<*xi16>, sym_name = "test_bitwise_or", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x10xi16>, %arg1: tensor<10x10xi16>):
    %0 = "onnx.BitwiseOr"(%arg0, %arg1) : (tensor<10x10xi16>, tensor<10x10xi16>) -> tensor<*xi16>
    "func.return"(%0) : (tensor<*xi16>) -> ()
  }) : () -> ()
}) : () -> ()

