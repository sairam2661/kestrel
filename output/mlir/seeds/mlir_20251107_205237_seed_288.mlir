"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>, sym_name = "compare_tensors"}> ({
  ^bb0(%arg0: tensor<3x4xi32>, %arg1: tensor<3x4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>
    %1 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>
    %3 = "arith.cmpi"(%arg0, %arg1, "sle") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>
    %4 = "arith.cmpi"(%arg0, %arg1, "sgt") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>
    %5 = "arith.cmpi"(%arg0, %arg1, "sge") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi1>
    %6 = "arith.addf"(%2, %3) : (tensor<3x4xi1>, tensor<3x4xi1>) -> tensor<3x4xi1>
    %7 = "arith.addf"(%4, %5) : (tensor<3x4xi1>, tensor<3x4xi1>) -> tensor<3x4xi1>
    %8 = "arith.addf"(%6, %7) : (tensor<3x4xi1>, tensor<3x4xi1>) -> tensor<3x4xi1>
    "func.return"(%8) : (tensor<3x4xi1>) -> ()
  }) : () -> ()
}) : () -> ()