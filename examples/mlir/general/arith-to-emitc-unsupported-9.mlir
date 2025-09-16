"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>, tensor<5xf32>) -> tensor<5xi1>, sym_name = "arith_cmpf_tensor"}> ({
  ^bb0(%arg0: tensor<5xf32>, %arg1: tensor<5xf32>):
    %0 = "arith.cmpf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>, predicate = 14 : i64}> : (tensor<5xf32>, tensor<5xf32>) -> tensor<5xi1>
    "func.return"(%0) : (tensor<5xi1>) -> ()
  }) : () -> ()
}) : () -> ()

