"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<f16>, sym_name = "cast_float_to_float"}> ({
    %0 = "tosa.const"() <{values = dense<4.200000e+01> : tensor<f32>}> : () -> tensor<f32>
    %1 = "tosa.cast"(%0) : (tensor<f32>) -> tensor<f16>
    "func.return"(%1) : (tensor<f16>) -> ()
  }) : () -> ()
}) : () -> ()

