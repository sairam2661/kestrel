"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "clamp_int8_is_noop"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 127 : i8, min_val = -128 : i8, nan_mode = "PROPAGATE"}> : (tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%0) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()

