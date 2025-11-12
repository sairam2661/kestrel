"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, i64, f32), sym_name = "test_mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addi"(%arg1, %arg1) : (i64, i64) -> i64
    %2 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
    "llvm.return"(%0, %1, %2) : (i32, i64, f32) -> ()
  }) : () -> ()
}) : () -> ()