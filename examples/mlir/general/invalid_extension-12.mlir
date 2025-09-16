"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>, tensor<13x1x3xbf16>, tensor<1xi8>) -> tensor<13x21x3xbf16>, sym_name = "test_mul"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x1x3xbf16>, %arg2: tensor<1xi8>):
    %0 = "tosa.mul"(%arg0, %arg1, %arg2) : (tensor<13x21x3xbf16>, tensor<13x1x3xbf16>, tensor<1xi8>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

