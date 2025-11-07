"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x1xf32>) -> tensor<*xf32>, sym_name = "test_instrument_add_onnx_zhigh"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x1xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) {onnx_node_name = "onnx.Add1"} : (tensor<10x10xf32>, tensor<10x1xf32>) -> tensor<*xf32>
    %1 = "onnx.Add"(%arg0, %0) {onnx_node_name = "onnx.Add2"} : (tensor<10x10xf32>, tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

