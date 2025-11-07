"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i1>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_if_verifier_4"}> ({
  ^bb0(%arg0: tensor<i1>):
    %0 = "onnx.If"(%arg0) ({
      %1 = "onnx.SequenceEmpty"() : () -> !onnx.Seq<tensor<*xf32>>
      "onnx.Yield"(%1) : (!onnx.Seq<tensor<*xf32>>) -> ()
    }, {
      %1 = "onnx.Constant"() {value = dense<[1.000000e+00, 2.000000e+00]> : tensor<2xf32>} : () -> tensor<2xf32>
      "onnx.Yield"(%1) : (tensor<2xf32>) -> ()
    }) : (tensor<i1>) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%0) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

