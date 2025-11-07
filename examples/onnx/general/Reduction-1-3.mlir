"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2x2xf32>) -> tensor<?x2xf32>, sym_name = "test_reducemin_v13"}> ({
  ^bb0(%arg0: tensor<?x2x2xf32>):
    %0 = "onnx.ReduceMinV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<?x2x2xf32>) -> tensor<?x2xf32>
    "func.return"(%0) : (tensor<?x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

