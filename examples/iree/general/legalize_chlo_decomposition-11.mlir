"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2xi64>) -> tensor<1x2xf32>, sym_name = "constant_like_static_shape"}> ({
  ^bb0(%arg0: tensor<1x2xi64>):
    %0 = "chlo.constant_like"(%arg0) <{value = 3.200000e+00 : f32}> : (tensor<1x2xi64>) -> tensor<1x2xf32>
    "func.return"(%0) : (tensor<1x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

