"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x?xf32>) -> tensor<3xf32>, sym_name = "test_einsum_qmark"}> ({
  ^bb0(%arg0: tensor<3x?xf32>):
    %0 = "onnx.Einsum"(%arg0) {equation = "ii->i"} : (tensor<3x?xf32>) -> tensor<3xf32>
    "onnx.Return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

