"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>) -> tensor<13x21x3xi32>, sym_name = "test_cast_bf16_i32"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>):
    %0 = "tosa.cast"(%arg0) : (tensor<13x21x3xbf16>) -> tensor<13x21x3xi32>
    "func.return"(%0) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

