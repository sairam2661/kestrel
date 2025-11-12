"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3xi8>) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "tosa.const"() <{value = dense<123> : tensor<2x3xi8>}> : () -> tensor<2x3xi8>
    %3 = "arith.addi"(%0, %0) : (i32, i32) -> i32
    %4 = "tosa.sin"(%1) : (f32) -> f32
    "func.return"(%3, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()