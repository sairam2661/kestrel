"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xf32>) -> tensor<4x4xi32>, sym_name = "mixed_types_and_arithmetic"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xf32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
    %2 = "arith.cmpi"(%arg0, %0, "eq") : (tensor<4x4xi32>, i32, i8) -> tensor<4x4xi1>
    %3 = "arith.cmpf"(%1, %1, "eq") : (tensor<4x4xf32>, tensor<4x4xf32>, i8) -> tensor<4x4xi1>
    %4 = "arith.addi"(%arg0, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()