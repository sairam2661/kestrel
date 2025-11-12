"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "complex_arithmetic_ops"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") <{}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %1 = "arith.addi"(%arg0, %arg1) <{}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{}> : (tensor<16x16xi32>, i32) -> tensor<16x16xi32>
    %4 = "arith.cmpi"(%arg0, %arg1, "gt") <{}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %5 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %6 = "arith.addf"(%5, %5) <{}> : (f32, f32) -> f32
    "func.return"(%3) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()