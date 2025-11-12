"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, index), sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%arg1, %0, "slt") : (i64, i32) -> i1
    %3 = "arith.select"(%2, %arg1, %arg0) : (i1, i64, i32) -> i64
    %4 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.addf"(%4, %4) : (f32, f32) -> f32
    "func.return"(%5, %3) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()