"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<13x21x3xi32>) -> tensor<13x21x3xf32>, sym_name = "stress_test_unusual_tensor_operations"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<13x21x3xi32>):
    %0 = "arith.addf"(%arg0, %arg0) : (tensor<13x21x3xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (tensor<13x21x3xi32>, tensor<13x21x3xi32>, i64) -> tensor<13x21x3xi1>
    %2 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %3 = "arith.cmpf"(%0, %2, "gt") : (tensor<13x21x3xf32>, f32, i64) -> tensor<13x21x3xi1>
    %4 = "arith.addf"(%0, %3) : (tensor<13x21x3xf32>, tensor<13x21x3xi1>) -> tensor<13x21x3xf32>
    "func.return"(%4) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()