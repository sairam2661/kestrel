"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>) -> tensor<1x21x3xbf16>, sym_name = "test_reduce_max"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>):
    %0 = "tosa.reduce_max"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<13x21x3xbf16>) -> tensor<1x21x3xbf16>
    "func.return"(%0) : (tensor<1x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

