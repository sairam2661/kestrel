"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf16>) -> tensor<4xf16>, sym_name = "clamp_f16_is_noop"}> ({
  ^bb0(%arg0: tensor<4xf16>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 0x7C00 : f16, min_val = 0xFC00 : f16, nan_mode = "PROPAGATE"}> : (tensor<4xf16>) -> tensor<4xf16>
    "func.return"(%0) : (tensor<4xf16>) -> ()
  }) : () -> ()
}) : () -> ()

