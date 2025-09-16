"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>) -> tensor<4xi16>, sym_name = "clamp_int16_is_noop"}> ({
  ^bb0(%arg0: tensor<4xi16>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 32767 : i16, min_val = -32768 : i16, nan_mode = "PROPAGATE"}> : (tensor<4xi16>) -> tensor<4xi16>
    "func.return"(%0) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()

