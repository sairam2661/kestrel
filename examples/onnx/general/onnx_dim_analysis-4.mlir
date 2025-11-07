"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x?xf32>) -> tensor<?x3x?xf32>, sym_name = "test_binary_elementwise"}> ({
  ^bb0(%arg0: tensor<?x3x?xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<?x3x?xf32>) -> tensor<?x3x?xf32>
    %1 = "onnx.Add"(%0, %arg0) : (tensor<?x3x?xf32>, tensor<?x3x?xf32>) -> tensor<?x3x?xf32>
    "onnx.Return"(%1) : (tensor<?x3x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

