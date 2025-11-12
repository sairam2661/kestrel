"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<3xf32>) -> (i32, tensor<3xf32>), sym_name = "mixedDialectComplexity"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<3xf32>):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "tosa.const"() <{value = dense<[0.0, 1.0, 2.0]> : tensor<3xf32>}> : () -> tensor<3xf32>
    %2 = "arith.addf"(%arg1, %1) : (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
    %3 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    "func.return"(%4, %2) : (i32, tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()