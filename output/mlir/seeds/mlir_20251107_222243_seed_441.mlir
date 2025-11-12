"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %2 = "arith.cmpi"(%arg0, %arg1, "sgt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %3 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %4 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %5 = "arith.cmpi"(%arg0, %arg1, "sle") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %6 = "arith.cmpi"(%arg0, %arg1, "sge") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %7 = "arith.select"(%1, %0, %arg1) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%7) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()