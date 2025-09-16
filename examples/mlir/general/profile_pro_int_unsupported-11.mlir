"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi8>) -> tensor<13x21x3xi8>, sym_name = "test_clamp"}> ({
  ^bb0(%arg0: tensor<13x21x3xi8>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 1 : i8, min_val = 0 : i8, nan_mode = "PROPAGATE"}> : (tensor<13x21x3xi8>) -> tensor<13x21x3xi8>
    "func.return"(%0) : (tensor<13x21x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()

