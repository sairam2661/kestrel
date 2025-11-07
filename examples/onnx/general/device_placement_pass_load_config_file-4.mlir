"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>, sym_name = "test_load_config_file_overlapping_condition"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>):
    %0 = "onnx.Relu"(%arg0) {onnx_node_name = "Relu_0"} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %1 = "onnx.Relu"(%0) {onnx_node_name = "Relu_1"} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %2 = "onnx.Relu"(%1) {onnx_node_name = "Relu_2"} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %3 = "onnx.Sigmoid"(%2) {onnx_node_name = "Sigmoid_0"} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    "onnx.Return"(%3) : (tensor<?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

