"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi16>, tensor<13x21x3xi16>) -> tensor<26x21x3xi16>, sym_name = "test_concat"}> ({
  ^bb0(%arg0: tensor<13x21x3xi16>, %arg1: tensor<13x21x3xi16>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<13x21x3xi16>, tensor<13x21x3xi16>) -> tensor<26x21x3xi16>
    "func.return"(%0) : (tensor<26x21x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()

