"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xf32>) -> tensor<2x2xi32>, sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xf32>):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
      %4 = "tosa.cast"(%3) : (f32) -> i32
      %5 = "arith.addi"(%2, %4) : (i32, i32) -> i32
      %6 = "tosa.cast"(%5) : (i32) -> f32
      %7 = "tosa.cast"(%arg1) : (tensor<2x2xf32>) -> tensor<2x2xi32>
      %8 = "arith.addi"(%arg0, %7) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%8) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()