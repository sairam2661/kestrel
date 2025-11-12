"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xf32>) -> tensor<4x4xi32>, sym_name = "mixed_types_op"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xf32>):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %1 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %2 = "arith.addf"(%arg1, %1) : (tensor<4x4xf32>, f32) -> tensor<4x4xf32>
    %3 = "tosa.cast"(%2) : (tensor<4x4xf32>) -> tensor<4x4xi32>
    %4 = "arith.select"(%0, %arg0, %3) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()