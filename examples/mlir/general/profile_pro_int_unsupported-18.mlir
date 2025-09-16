"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xi32>) -> tensor<13x21x1xi32>, sym_name = "test_bitwise_not"}> ({
  ^bb0(%arg0: tensor<13x21x1xi32>):
    %0 = "tosa.bitwise_not"(%arg0) : (tensor<13x21x1xi32>) -> tensor<13x21x1xi32>
    "func.return"(%0) : (tensor<13x21x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

