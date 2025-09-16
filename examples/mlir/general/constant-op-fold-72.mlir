"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1xi8>, sym_name = "reduce_min_constant_no_overflow"}> ({
    %0 = "tosa.const"() <{values = dense<[-127, 120, -126]> : tensor<3xi8>}> : () -> tensor<3xi8>
    %1 = "tosa.reduce_min"(%0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<3xi8>) -> tensor<1xi8>
    "func.return"(%1) : (tensor<1xi8>) -> ()
  }) : () -> ()
}) : () -> ()

