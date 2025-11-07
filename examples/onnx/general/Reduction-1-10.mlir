"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>) -> tensor<?x?xf32>, sym_name = "test_reducemean_v13_2"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

