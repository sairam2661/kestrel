"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x8x16xi32>, tensor<2x3x32xi64>) -> (i32, tensor<4x8x16xi32>), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x8x16xi32>, %arg2: tensor<2x3x32xi64>):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "tosa.const"() <{values = dense<42> : tensor<2x3x32xi64>}> : () -> tensor<2x3x32xi64>
    %2 = "arith.addf"(%arg1, %arg1) : (tensor<4x8x16xi32>, tensor<4x8x16xi32>) -> tensor<4x8x16xi32>
    %3 = "llvm.mlir.constant"() <{value = 123 : i32}> : () -> i32
    %4 = "arith.cmpf"(%2, %2) <{predicate = "oeq"}> : (tensor<4x8x16xi32>, tensor<4x8x16xi32>) -> tensor<4x8x16xi1>
    "llvm.return"(%arg0, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()