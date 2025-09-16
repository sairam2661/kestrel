"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>, sym_name = "test_reciprocal"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>):
    %0 = "tosa.reciprocal"(%arg0) : (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

