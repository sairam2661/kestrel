"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi16>, tensor<2x4x5xi16>) -> tensor<2x3x5xi16>, sym_name = "test_einsum_matmul"}> ({
  ^bb0(%arg0: tensor<2x3x4xi16>, %arg1: tensor<2x4x5xi16>):
    %0 = "onnx.Einsum"(%arg0, %arg1) {equation = "...ij,...jk"} : (tensor<2x3x4xi16>, tensor<2x4x5xi16>) -> tensor<2x3x5xi16>
    "onnx.Return"(%0) : (tensor<2x3x5xi16>) -> ()
  }) : () -> ()
}) : () -> ()

