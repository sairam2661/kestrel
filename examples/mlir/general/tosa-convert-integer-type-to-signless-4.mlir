"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi8>) -> tensor<13x21x3xi8>, sym_name = "test_no_change"}> ({
  ^bb0(%arg0: tensor<13x21x3xi8>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<13x21x3xi8>) -> tensor<13x21x3xi8>
    "func.return"(%0) : (tensor<13x21x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()

