"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>, sym_name = "test_reverse"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

