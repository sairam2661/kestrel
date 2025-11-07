"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x20x30xf32>) -> tensor<?x20x30xf32>, sym_name = "test_softmax_dynamic"}> ({
  ^bb0(%arg0: tensor<?x20x30xf32>):
    %0 = "onnx.Softmax"(%arg0) {axis = 1 : si64} : (tensor<?x20x30xf32>) -> tensor<?x20x30xf32>
    "func.return"(%0) : (tensor<?x20x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

