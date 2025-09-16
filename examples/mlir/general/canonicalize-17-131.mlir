"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xf32>, sym_name = "splat_fold"}> ({
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "tensor.splat"(%0) : (f32) -> tensor<4xf32>
    "func.return"(%1) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

