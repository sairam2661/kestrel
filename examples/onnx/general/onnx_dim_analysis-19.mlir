"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>, sym_name = "test_concat_input_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?x?xf32>, %arg2: tensor<?x?x?xf32>):
    %0 = "onnx.Concat"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    "func.return"(%0) : (tensor<?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

