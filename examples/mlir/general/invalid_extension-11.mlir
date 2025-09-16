"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>, tensor<13x21x1xbf16>) -> tensor<13x21x3xbf16>, sym_name = "test_max"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x21x1xbf16>):
    %0 = "tosa.maximum"(%arg0, %arg1) <{nan_mode = "PROPAGATE"}> : (tensor<13x21x3xbf16>, tensor<13x21x1xbf16>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

