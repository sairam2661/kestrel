"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_cmp_and_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %1 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %2 = "arith.addf"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xf32>
    %3 = "arith.cmpf"(%2, %2, "oeq") : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xi1>
    %4 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()