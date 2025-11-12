"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>) -> tensor<2xf32>, sym_name = "convert"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0 = "stablehlo.convert"(%arg0) : (tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

