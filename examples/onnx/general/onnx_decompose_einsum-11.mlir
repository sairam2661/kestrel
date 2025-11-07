"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?xf32>) -> tensor<?xf32>, sym_name = "test_einsum_qmark1"}> ({
  ^bb0(%arg0: tensor<1x?xf32>):
    %0 = "onnx.Einsum"(%arg0) {equation = "ii->i"} : (tensor<1x?xf32>) -> tensor<?xf32>
    "onnx.Return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

