"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>, tensor<1xbf16>, tensor<1xbf16>) -> tensor<13x21x3xbf16>, sym_name = "test_negate"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<1xbf16>, %arg2: tensor<1xbf16>):
    %0 = "tosa.negate"(%arg0, %arg1, %arg2) : (tensor<13x21x3xbf16>, tensor<1xbf16>, tensor<1xbf16>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

