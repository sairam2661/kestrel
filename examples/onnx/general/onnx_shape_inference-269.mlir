"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xf16>) -> tensor<*xf16>, sym_name = "test_bernoulli_2"}> ({
  ^bb0(%arg0: tensor<8x8xf16>):
    %0 = "onnx.Bernoulli"(%arg0) {seed = 2.000000e+00 : f32} : (tensor<8x8xf16>) -> tensor<*xf16>
    "onnx.Return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

