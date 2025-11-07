"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x?x?x42xf32>, tensor<32x?x64x42x32xf32>) -> tensor<*xf32>, sym_name = "test_matmul_5"}> ({
  ^bb0(%arg0: tensor<16x?x?x42xf32>, %arg1: tensor<32x?x64x42x32xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<16x?x?x42xf32>, tensor<32x?x64x42x32xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

