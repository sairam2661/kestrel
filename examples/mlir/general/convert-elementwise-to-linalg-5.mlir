"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?x?x8x2x?xf32>, tensor<4x?x?x8x2x?xf32>) -> tensor<4x?x?x8x2x?xi1>, sym_name = "cmpf"}> ({
  ^bb0(%arg0: tensor<4x?x?x8x2x?xf32>, %arg1: tensor<4x?x?x8x2x?xf32>):
    %0 = "arith.cmpf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>, predicate = 4 : i64}> : (tensor<4x?x?x8x2x?xf32>, tensor<4x?x?x8x2x?xf32>) -> tensor<4x?x?x8x2x?xi1>
    "func.return"(%0) : (tensor<4x?x?x8x2x?xi1>) -> ()
  }) : () -> ()
}) : () -> ()

