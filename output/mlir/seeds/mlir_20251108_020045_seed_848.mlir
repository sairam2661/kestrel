"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "test_complex_arithmetic"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %1 = "arith.cmpi"("slt", %arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %2 = "arith.addi"(%0, %1) : (tensor<4x4xi32>, tensor<4x4xi1>) -> tensor<4x4xi32>
      %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %4 = "arith.addi"(%2, %3) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
      "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()