"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xui8>) -> tensor<4xui8>, sym_name = "clamp_uint8_is_noop"}> ({
  ^bb0(%arg0: tensor<4xui8>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 255 : ui8, min_val = 0 : ui8, nan_mode = "PROPAGATE"}> : (tensor<4xui8>) -> tensor<4xui8>
    "func.return"(%0) : (tensor<4xui8>) -> ()
  }) : () -> ()
}) : () -> ()

