"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "test_type_conversion"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.cmpi"("eq", %0, %arg0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.addi"(%0, %2) : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()