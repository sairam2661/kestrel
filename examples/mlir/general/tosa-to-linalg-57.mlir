"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x2xi32>, tensor<2x3xi32>) -> (), sym_name = "gather_int"}> ({
  ^bb0(%arg0: tensor<2x3x2xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<2x3x2xi32>, tensor<2x3xi32>) -> tensor<2x3x2xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

