"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>) -> tensor<13x21x3xi16>, sym_name = "test_cast_i32_i16"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>):
    %0 = "tosa.cast"(%arg0) : (tensor<13x21x3xi32>) -> tensor<13x21x3xi16>
    "func.return"(%0) : (tensor<13x21x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()

