"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xi1>, sym_name = "tensor_cmp"}> ({
  ^bb0(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>):
    %0 = "arith.cmpf"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()