"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixedArithAndCmp"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %arg0) : (i1, f32, f32) -> f32
    %4 = "arith.select"(%2, %1, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%3, %4) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()