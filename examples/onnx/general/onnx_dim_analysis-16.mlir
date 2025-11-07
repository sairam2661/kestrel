"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x?xf32>, tensor<?x10xf32>) -> tensor<5x10xf32>, sym_name = "test_matmul_reduction_dimension"}> ({
  ^bb0(%arg0: tensor<5x?xf32>, %arg1: tensor<?x10xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<5x?xf32>, tensor<?x10xf32>) -> tensor<5x10xf32>
    "func.return"(%0) : (tensor<5x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

