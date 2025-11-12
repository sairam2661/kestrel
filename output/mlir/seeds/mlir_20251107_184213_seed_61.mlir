"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.cmpi"(%0, %arg0, "eq") : (tensor<4xi32>, tensor<4xi32>, i32) -> tensor<4xi1>
    %2 = "arith.addf"(%0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xf32>
    %3 = "arith.cmpf"(%2, %2, "oeq") : (tensor<4xf32>, tensor<4xf32>, i32) -> tensor<4xi1>
    "func.return"(%1, %3) : (tensor<4xi1>, tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()