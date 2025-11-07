"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x?xi64>, sym_name = "test_nonzero"}> ({
    %0 = "onnx.Constant"() {value = dense<[[2, 1], [0, 2], [0, 1]]> : tensor<3x2xi8>} : () -> tensor<3x2xi8>
    %1 = "onnx.NonZero"(%0) : (tensor<3x2xi8>) -> tensor<2x?xi64>
    "onnx.Return"(%1) : (tensor<2x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

