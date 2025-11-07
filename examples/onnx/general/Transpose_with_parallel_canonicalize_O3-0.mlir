"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256x12x64xf32>) -> tensor<?x12x256x64xf32>, sym_name = "test_transpose_block_1_last_dim_parallel"}> ({
  ^bb0(%arg0: tensor<?x256x12x64xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 2, 1, 3]} : (tensor<?x256x12x64xf32>) -> tensor<?x12x256x64xf32>
    "func.return"(%0) : (tensor<?x12x256x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

