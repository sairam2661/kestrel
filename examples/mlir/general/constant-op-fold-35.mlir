"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<f16>, sym_name = "cast_int_to_float"}> ({
    %0 = "tosa.const"() <{values = dense<4> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.cast"(%0) : (tensor<i32>) -> tensor<f16>
    "func.return"(%1) : (tensor<f16>) -> ()
  }) : () -> ()
}) : () -> ()

