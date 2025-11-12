"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i64, f64), sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.extsi"(%1) : (i32) -> i64
    %3 = "arith.fptosi"(%arg1) : (f32) -> i32
    %4 = "arith.addi"(%3, %3) : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %4) : (i32, i32) -> i32
    %6 = "arith.sitof"(%5) : (i32) -> f32
    %7 = "arith.fptosi"(%6) : (f32) -> i32
    %8 = "arith.extsi"(%7) : (i32) -> i64
    %9 = "arith.fptosi"(%arg1) : (f32) -> i32
    %10 = "arith.extsi"(%9) : (i32) -> i64
    %11 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %12 = "arith.mulf"(%11, %11) : (f32, f32) -> f32
    %13 = "func.return"(%2, %12) : (i64, f32) -> ()
  }) : () -> ()
}) : () -> ()