"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tile_and_sum"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %1 = "tosa.const"() <{values = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %2 = "arith.addi"(%arg0, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %3 = "arith.addi"(%arg1, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %4 = "arith.addi"(%2, %3) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()