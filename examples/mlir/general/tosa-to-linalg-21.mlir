"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi64>) -> (), sym_name = "test_i64"}> ({
  ^bb0(%arg0: tensor<1xi64>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 9223372036854775807 : i64, min_val = -9223372036854775808 : i64, nan_mode = "PROPAGATE"}> : (tensor<1xi64>) -> tensor<1xi64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

