"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xui32>, tensor<2x2xui32>) -> tensor<2x2xui32>, sym_name = "unsigned_integer_input_output"}> ({
  ^bb0(%arg0: tensor<2x2xui32>, %arg1: tensor<2x2xui32>):
    %0 = "stablehlo.add"(%arg0, %arg1) : (tensor<2x2xui32>, tensor<2x2xui32>) -> tensor<2x2xui32>
    "func.return"(%0) : (tensor<2x2xui32>) -> ()
  }) : () -> ()
}) : () -> ()

