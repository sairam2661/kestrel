"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "matrix_op"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "arith.constant"() <{value = dense<1.0> : tensor<10x10xf32>}> : () -> tensor<10x10xf32>
    %1 = "arith.addf"(%arg0, %0) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    %2 = "arith.cmpf"(%arg0, %1) <{predicate = 0 : i64}> : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xi1>
    %3 = "arith.constant"() <{value = dense<0.0> : tensor<10x10xf32>}> : () -> tensor<10x10xf32>
    %4 = "arith.addf"(%arg0, %3) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    "func.return"(%4) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()