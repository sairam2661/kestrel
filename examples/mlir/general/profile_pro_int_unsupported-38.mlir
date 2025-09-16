"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi16>) -> tensor<13x21x3xi8>, sym_name = "test_cast_i16_i8"}> ({
  ^bb0(%arg0: tensor<13x21x3xi16>):
    %0 = "tosa.cast"(%arg0) : (tensor<13x21x3xi16>) -> tensor<13x21x3xi8>
    "func.return"(%0) : (tensor<13x21x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()

