"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, i64) -> (i32, f32), sym_name = "fuzz_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %arg1, %1) : (i1, f32, f32) -> f32
    %4 = "arith.addf"(%3, %1) : (f32, f32) -> f32
    %5 = "arith.cmpi"(%arg2, %0, "ne") : (i64, i32) -> i1
    %6 = "arith.select"(%5, %arg0, %0) : (i1, i32, i32) -> i32
    "func.return"(%6, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()