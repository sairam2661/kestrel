"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi8>) -> (), sym_name = "test_i8"}> ({
  ^bb0(%arg0: tensor<1xi8>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 126 : i8, min_val = -127 : i8, nan_mode = "PROPAGATE"}> : (tensor<1xi8>) -> tensor<1xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

