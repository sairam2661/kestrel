"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<*xi32>) -> (tensor<13x26x3xf32>, tensor<13x26x3xi32>), sym_name = "complex_gather_unranked_indices"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<*xi32>):
    %0 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) : (tensor<13x21x3xf32>, f32) -> tensor<13x21x3xf32>
    %2 = "tosa.gather"(%1, %arg1) : (tensor<13x21x3xf32>, tensor<*xi32>) -> tensor<13x26x3xf32>
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.addi"(%arg1, %3) : (tensor<*xi32>, i32) -> tensor<*xi32>
    "func.return"(%2, %4) : (tensor<13x26x3xf32>, tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()