"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi16>) -> tensor<13x21x3xi16>, sym_name = "test_clamp"}> ({
  ^bb0(%arg0: tensor<13x21x3xi16>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 1 : i16, min_val = 0 : i16, nan_mode = "PROPAGATE"}> : (tensor<13x21x3xi16>) -> tensor<13x21x3xi16>
    "func.return"(%0) : (tensor<13x21x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()

