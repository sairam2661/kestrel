"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i1>, !onnx.Seq<tensor<2xf32>>) -> (!onnx.Seq<tensor<*xf32>>, !onnx.Opt<tensor<*xi1>>, !onnx.Opt<!onnx.Seq<tensor<*xf32>>>), sym_name = "test_if_2"}> ({
  ^bb0(%arg0: tensor<i1>, %arg1: !onnx.Seq<tensor<2xf32>>):
    %0:3 = "onnx.If"(%arg0) ({
      %1 = "onnx.NoValue"() {value} : () -> none
      %2 = "onnx.Optional"(%1) {type = tensor<2xi1>} : (none) -> !onnx.Opt<tensor<*xi1>>
      %3 = "onnx.Optional"(%1) {type = !onnx.Seq<tensor<1xf32>>} : (none) -> !onnx.Opt<!onnx.Seq<tensor<*xf32>>>
      "onnx.Yield"(%arg1, %2, %3) : (!onnx.Seq<tensor<2xf32>>, !onnx.Opt<tensor<*xi1>>, !onnx.Opt<!onnx.Seq<tensor<*xf32>>>) -> ()
    }, {
      %1 = "onnx.SequenceEmpty"() : () -> !onnx.Seq<tensor<*xf32>>
      %2 = "onnx.Optional"(%arg0) : (tensor<i1>) -> !onnx.Opt<tensor<*xi1>>
      %3 = "onnx.Optional"(%arg1) : (!onnx.Seq<tensor<2xf32>>) -> !onnx.Opt<!onnx.Seq<tensor<*xf32>>>
      "onnx.Yield"(%1, %2, %3) : (!onnx.Seq<tensor<*xf32>>, !onnx.Opt<tensor<*xi1>>, !onnx.Opt<!onnx.Seq<tensor<*xf32>>>) -> ()
    }) : (tensor<i1>) -> (!onnx.Seq<tensor<*xf32>>, !onnx.Opt<tensor<*xi1>>, !onnx.Opt<!onnx.Seq<tensor<*xf32>>>)
    "onnx.Return"(%0#0, %0#1, %0#2) : (!onnx.Seq<tensor<*xf32>>, !onnx.Opt<tensor<*xi1>>, !onnx.Opt<!onnx.Seq<tensor<*xf32>>>) -> ()
  }) : () -> ()
}) : () -> ()

