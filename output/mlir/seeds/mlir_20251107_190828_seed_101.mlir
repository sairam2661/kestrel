#map = affine_map<(d0, d1)[s0] -> (d0 + d1 * 2 + s0)>
#map2 = affine_map<(d0)[s0] -> (d0 + s0 * 3 - 1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5x6x7xi32>, tensor<4x5x6x7xi32>) -> tensor<4x5x6x7xi1>, sym_name = "complex_compare"}> ({
  ^bb0(%arg0: tensor<4x5x6x7xi32>, %arg1: tensor<4x5x6x7xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4x5x6x7xi32>, tensor<4x5x6x7xi32>) -> tensor<4x5x6x7xi1>
    %1 = "arith.cmpf"(%arg0, %arg1, "oeq") : (tensor<4x5x6x7xi32>, tensor<4x5x6x7xi32>) -> tensor<4x5x6x7xi1>
    %2 = "arith.addi"(%0, %1) : (tensor<4x5x6x7xi1>, tensor<4x5x6x7xi1>) -> tensor<4x5x6x7xi1>
    "func.return"(%2) : (tensor<4x5x6x7xi1>) -> ()
  }) : () -> ()
}) : () -> ()