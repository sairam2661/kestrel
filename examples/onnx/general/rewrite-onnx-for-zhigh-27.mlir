"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x256x256xf32>) -> tensor<?x?x256x256xf32>, sym_name = "test_matmul_unknown_batch_dim"}> ({
  ^bb0(%arg0: tensor<?x?x256x256xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg0) : (tensor<?x?x256x256xf32>, tensor<?x?x256x256xf32>) -> tensor<?x?x256x256xf32>
    "func.return"(%0) : (tensor<?x?x256x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

