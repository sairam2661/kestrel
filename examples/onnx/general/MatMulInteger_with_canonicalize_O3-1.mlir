"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32xui8>, tensor<32x64xui8>, tensor<16xui8>, tensor<1xui8>) -> tensor<16x64xi32>, sym_name = "test_matmulinteger_per_row_a"}> ({
  ^bb0(%arg0: tensor<16x32xui8>, %arg1: tensor<32x64xui8>, %arg2: tensor<16xui8>, %arg3: tensor<1xui8>):
    %0 = "onnx.MatMulInteger"(%arg0, %arg1, %arg2, %arg3) : (tensor<16x32xui8>, tensor<32x64xui8>, tensor<16xui8>, tensor<1xui8>) -> tensor<16x64xi32>
    "func.return"(%0) : (tensor<16x64xi32>) -> ()
  }) : () -> ()
}) : () -> ()

