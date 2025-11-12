"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (index, f32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    "func.return"(%4, %3) : (index, f32) -> ()
  }) : () -> ()
}) : () -> ()