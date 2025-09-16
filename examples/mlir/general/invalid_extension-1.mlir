"builtin.module"() ({
  "func.func"() <{function_type = (tensor<14x19xbf16>) -> tensor<14xi32>, sym_name = "test_argmax"}> ({
  ^bb0(%arg0: tensor<14x19xbf16>):
    %0 = "tosa.argmax"(%arg0) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<14x19xbf16>) -> tensor<14xi32>
    "func.return"(%0) : (tensor<14xi32>) -> ()
  }) : () -> ()
}) : () -> ()

