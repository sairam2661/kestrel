"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>, tensor<13x1x3xbf16>) -> tensor<13x21x3xi1>, sym_name = "test_equal"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x1x3xbf16>):
    %0 = "tosa.equal"(%arg0, %arg1) : (tensor<13x21x3xbf16>, tensor<13x1x3xbf16>) -> tensor<13x21x3xi1>
    "func.return"(%0) : (tensor<13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

