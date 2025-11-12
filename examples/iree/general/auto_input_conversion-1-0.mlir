"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "simple_add_stablehlo"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "stablehlo.add"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

