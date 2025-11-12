"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x10xi32>, i32) -> tensor<4x10xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<4x10xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [21, 22, 23, 24, 25, 26, 27, 28, 29, 30], [31, 32, 33, 34, 35, 36, 37, 38, 39, 40]]> : tensor<4x10xi32>}> : () -> tensor<4x10xi32>
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.select"(%arg1, %0, %1) <{}> : (i32, tensor<4x10xi32>, tensor<4x10xi32>) -> tensor<4x10xi32>
    %3 = "arith.muli"(%2, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<4x10xi32>, i32) -> tensor<4x10xi32>
    %4 = "arith.addi"(%3, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<4x10xi32>, tensor<4x10xi32>) -> tensor<4x10xi32>
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<4x10xi32>, tensor<4x10xi32>) -> tensor<4x10xi32>
    %6 = "arith.cmpi"(%5, %0, "ne") <{}> : (tensor<4x10xi32>, tensor<4x10xi32>, i32) -> tensor<4x10xi1>
    %7 = "arith.select"(%6, %5, %0) <{}> : (tensor<4x10xi1>, tensor<4x10xi32>, tensor<4x10xi32>) -> tensor<4x10xi32>
    "func.return"(%7) : (tensor<4x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()