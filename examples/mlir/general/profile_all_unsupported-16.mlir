"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>, sym_name = "test_add_i32"}> ({
  ^bb0(%arg0: tensor<13x21x1xi32>, %arg1: tensor<13x21x3xi32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<13x21x1xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>
    "func.return"(%0) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

