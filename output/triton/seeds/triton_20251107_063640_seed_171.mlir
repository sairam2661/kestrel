"builtin.module"() ({
  "tt.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i64, alignment = 64 : i64}> : () -> !ttgPtr
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 20.5 : f32}> : () -> f32
    %3 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %4 = "arith.mulf"(%arg1, %2) : (f32, f32) -> f32
    %5 = "ttg.global_scratch_alloc"() <{size = 2048 : i64, alignment = 128 : i64}> : () -> !ttgPtr
    %6 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %7 = "arith.addi"(%3, %6) : (i32, i32) -> i32
    %8 = "arith.mulf"(%4, %2) : (f32, f32) -> f32
    "tt.return"(%7, %8) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()