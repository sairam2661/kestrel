"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x20x30xf32>) -> tensor<?x1x30xf32>, sym_name = "test_reducemax_v13_keepdims"}> ({
  ^bb0(%arg0: tensor<?x20x30xf32>):
    %0 = "onnx.ReduceMaxV13"(%arg0) {axes = [1], keepdims = 1 : si64} : (tensor<?x20x30xf32>) -> tensor<?x1x30xf32>
    "func.return"(%0) : (tensor<?x1x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

