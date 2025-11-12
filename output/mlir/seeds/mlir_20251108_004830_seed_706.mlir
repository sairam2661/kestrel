"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x3xbf16>, tensor<21x3xbf16>) -> tensor<34x3xbf16>, sym_name = "test_concat_and_add"}> ({
  ^bb0(%arg0: tensor<13x3xbf16>, %arg1: tensor<21x3xbf16>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<13x3xbf16>, tensor<21x3xbf16>) -> tensor<34x3xbf16>
    %1 = "arith.constant"() <{value = dense<1.000000e+00 : f32> : tensor<34x3xbf16>}> : () -> tensor<34x3xbf16>
    %2 = "arith.addf"(%0, %1) : (tensor<34x3xbf16>, tensor<34x3xbf16>) -> tensor<34x3xbf16>
    "func.return"(%2) : (tensor<34x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()