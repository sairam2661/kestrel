"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x?xf32>) -> tensor<?x3x?xf32>, sym_name = "test_unary_elementwise"}> ({
  ^bb0(%arg0: tensor<?x3x?xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<?x3x?xf32>) -> tensor<?x3x?xf32>
    "onnx.Return"(%0) : (tensor<?x3x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

