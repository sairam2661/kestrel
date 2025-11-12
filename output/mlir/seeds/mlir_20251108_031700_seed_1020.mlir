"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xf32>) -> tensor<10xi32>, sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xf32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<10xi32>}> : tensor<10xi32>
    %1 = "arith.cmpi"(%arg0, %0, "ne") : (tensor<10xi32>, tensor<10xi32>, i32) -> tensor<10xi1>
    %2 = "arith.constant"() <{value = dense<1.0> : tensor<10xf32>}> : tensor<10xf32>
    %3 = "arith.cmpf"(%arg1, %2, "ne") : (tensor<10xf32>, tensor<10xf32>, i32) -> tensor<10xi1>
    %4 = "arith.addi"(%arg0, %0) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %5 = "arith.addf"(%arg1, %2) : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    "func.return"(%4) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()