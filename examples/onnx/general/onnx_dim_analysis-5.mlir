"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x8x16x16xf32>) -> tensor<?x8x16x16xf32>, sym_name = "test_matmul_batchsize"}> ({
  ^bb0(%arg0: tensor<?x8x16x16xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<?x8x16x16xf32>) -> tensor<?x8x16x16xf32>
    %1 = "onnx.MatMul"(%0, %arg0) : (tensor<?x8x16x16xf32>, tensor<?x8x16x16xf32>) -> tensor<?x8x16x16xf32>
    "onnx.Return"(%1) : (tensor<?x8x16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

