"builtin.module"() ({
  "func.func"() <{function_type = (tensor<0x1x2xf32>) -> tensor<2x0x1xf32>, sym_name = "test_einsum_transpose_last_first"}> ({
  ^bb0(%arg0: tensor<0x1x2xf32>):
    %0 = "onnx.Einsum"(%arg0) {equation = "...i->i..."} : (tensor<0x1x2xf32>) -> tensor<2x0x1xf32>
    "onnx.Return"(%0) : (tensor<2x0x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

