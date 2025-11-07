"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024x1024x1024xf32>) -> tensor<1024x1024x1024xf32>, sym_name = "matmul_nnpa"}> ({
  ^bb0(%arg0: tensor<1024x1024x1024xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg0) : (tensor<1024x1024x1024xf32>, tensor<1024x1024x1024xf32>) -> tensor<1024x1024x1024xf32>
    "func.return"(%0) : (tensor<1024x1024x1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()

