"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi8>, tensor<10x10xi8>) -> tensor<*xi8>, sym_name = "test_bitwise_and", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x10xi8>, %arg1: tensor<10x10xi8>):
    %0 = "onnx.BitwiseAnd"(%arg0, %arg1) : (tensor<10x10xi8>, tensor<10x10xi8>) -> tensor<*xi8>
    "func.return"(%0) : (tensor<*xi8>) -> ()
  }) : () -> ()
}) : () -> ()

