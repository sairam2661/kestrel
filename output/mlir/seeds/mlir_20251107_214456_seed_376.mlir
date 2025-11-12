"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi8>, tensor<4xi32>, tensor<4xf32>) -> (i32, f32), sym_name = "mixed_type_computation"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi8>, %arg2: tensor<4xi32>, %arg3: tensor<4xf32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4xi1>, tensor<4xi8>) -> tensor<4xi1>
    %1 = "arith.cmpi"(%arg2, %arg3, "slt") : (tensor<4xi32>, tensor<4xf32>) -> tensor<4xi1>
    %2 = "arith.addi"(%arg2, %arg2) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.cmpf"(%arg3, %arg3, "eq") : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xi1>
    %4 = "arith.addf"(%arg3, %arg3) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %5 = "tosa.const"() <{value = 42 : i32}> : () -> i32
    %6 = "tosa.const"() <{value = 3.14 : f32}> : () -> f32
    %7 = "arith.addi"(%2, %5) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %8 = "arith.addf"(%4, %6) : (tensor<4xf32>, f32) -> tensor<4xf32>
    "func.return"(%7, %8) : (tensor<4xi32>, tensor<4xf32>) -> (i32, f32)
  }) : () -> ()
}) : () -> ()