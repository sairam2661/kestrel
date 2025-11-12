"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, i64, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
    %1 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    %2 = "arith.muli"(%0, %1) : (i64, i64) -> i64
    %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.addf"(%arg2, %3) : (f32, f32) -> f32
    "func.return"(%2, %arg1, %4) : (i64, i64, f32) -> ()
  }) : () -> ()
}) : () -> ()