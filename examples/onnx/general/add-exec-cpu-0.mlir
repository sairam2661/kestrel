"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<*xf32>, sym_name = "test_add_force_cpu"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x10xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) {device = "cpu", onnx_node_name = "test/add0"} : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<*xf32>
    %1 = "onnx.Add"(%0, %arg0) {onnx_node_name = "test/add1"} : (tensor<*xf32>, tensor<10x10xf32>) -> tensor<*xf32>
    %2 = "onnx.Add"(%1, %arg1) {device = "cpu", onnx_node_name = "test/add2"} : (tensor<*xf32>, tensor<10x10xf32>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

