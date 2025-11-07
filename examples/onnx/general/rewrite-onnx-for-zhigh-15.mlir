"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x256xf32>, tensor<1xf32>) -> tensor<128x256xf32>, sym_name = "test_mul_block_arg"}> ({
  ^bb0(%arg0: tensor<128x256xf32>, %arg1: tensor<1xf32>):
    %0 = "onnx.Mul"(%arg0, %arg1) : (tensor<128x256xf32>, tensor<1xf32>) -> tensor<128x256xf32>
    "func.return"(%0) : (tensor<128x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

