"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_comparison"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %2 = "arith.cmpi"(%arg0, %arg1, "sge") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %3 = "arith.cmpi"(%arg0, %arg1, "sgt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %4 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %5 = "tosa.bitcast"(%0) : (tensor<4x4xi1>) -> tensor<4x4xi32>
    %6 = "tosa.bitcast"(%1) : (tensor<4x4xi1>) -> tensor<4x4xi32>
    %7 = "tosa.bitcast"(%2) : (tensor<4x4xi1>) -> tensor<4x4xi32>
    %8 = "tosa.bitcast"(%3) : (tensor<4x4xi1>) -> tensor<4x4xi32>
    %9 = "tosa.bitcast"(%4) : (tensor<4x4xi1>) -> tensor<4x4xi32>
    %10 = "tosa.add"(%5, %6) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %11 = "tosa.add"(%7, %8) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %12 = "tosa.add"(%10, %9) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %13 = "tosa.add"(%11, %12) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%13) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()