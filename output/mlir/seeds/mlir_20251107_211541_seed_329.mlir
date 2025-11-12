"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi64>, tensor<2x3xi32>) -> tensor<2x3xi64>, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: tensor<2x3xi64>, %arg1: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<2x3xi64>, tensor<2x3xi64>) -> tensor<2x3xi64>
    %1 = "arith.addi"(%arg1, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %2 = "arith.cmpi"(%0, %arg0, "ne") : (tensor<2x3xi64>, tensor<2x3xi64>) -> tensor<2x3xi1>
    %3 = "arith.cmpi"(%1, %arg1, "eq") : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "arith.addi"(%4, %4) : (i32, i32) -> i32
    "func.return"(%0) : (tensor<2x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()