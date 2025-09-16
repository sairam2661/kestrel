"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>, sym_name = "test_clamp_bf16"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 1.000000e+00 : bf16, min_val = 0.000000e+00 : bf16, nan_mode = "PROPAGATE"}> : (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

