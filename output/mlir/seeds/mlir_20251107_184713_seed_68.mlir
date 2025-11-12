"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_select_and_sum"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "tosa.const"() <{values = dense<true> : tensor<4x4xi1>}> : () -> tensor<4x4xi1>
    %1 = "tosa.select"(%0, %arg0, %arg1) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %2 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %4) : (i32, i32) -> i32
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()