"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<*xi32>, sym_name = "test_bitwise_xor", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "onnx.BitwiseXor"(%arg0, %arg1) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

