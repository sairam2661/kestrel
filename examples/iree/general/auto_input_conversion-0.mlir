"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "simple_add_tosa"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

