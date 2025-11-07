"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>) -> tensor<2xf32>, sym_name = "test_einsum_sum"}> ({
  ^bb0(%arg0: tensor<2x3xf32>):
    %0 = "onnx.Einsum"(%arg0) {equation = "ij->i"} : (tensor<2x3xf32>) -> tensor<2xf32>
    "onnx.Return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

