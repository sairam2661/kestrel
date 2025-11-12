"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (f32, f32), sym_name = "mixed_integer_float_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %1 = "arith.cmpi"("slt", %0, %arg1) : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %5 = "arith.mulf"(%4, %3) : (f32, f32) -> f32
    "func.return"(%5, %2) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()