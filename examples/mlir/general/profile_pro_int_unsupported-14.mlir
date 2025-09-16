"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>, tensor<13x21x1xi32>) -> tensor<13x21x3xi32>, sym_name = "test_max"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>, %arg1: tensor<13x21x1xi32>):
    %0 = "tosa.maximum"(%arg0, %arg1) <{nan_mode = "PROPAGATE"}> : (tensor<13x21x3xi32>, tensor<13x21x1xi32>) -> tensor<13x21x3xi32>
    "func.return"(%0) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

