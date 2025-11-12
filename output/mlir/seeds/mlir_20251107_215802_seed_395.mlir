"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3xi8>) -> (i32, f64), sym_name = "mixed_types_and_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3xi8>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "tosa.const"() <{value = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi8>}> : () -> tensor<2x3xi8>
      %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %5 = "arith.extf"(%4) : (f32) -> f64
      "func.return"(%3, %5) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()