"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_f32 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %0 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %1 = "arith.mulf"(%arg1, %c2_f32) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    %2 = "arith.select"(%c1_i32, %0, %arg0) <{predicate = "slt"}> : (i32, i32, i32) -> i32
    %3 = "arith.addf"(%0, %1) <{fastmath = #arith_fastmath}> : (i32, f32) -> f32
    %4 = "arith.cmpi"(%arg0, %c1_i32) <{predicate = "slt"}> : (i32, i32) -> i1
    %5 = "arith.subi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()