"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>) -> tensor<13x21x3xbf16>, sym_name = "test_cast_f32_bf16"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>):
    %0 = "tosa.cast"(%arg0) : (tensor<13x21x3xf32>) -> tensor<13x21x3xbf16>
    "func.return"(%0) : (tensor<13x21x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

