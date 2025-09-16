"builtin.module"() ({
  "func.func"() <{function_type = (f32, f64) -> (), sym_name = "arith_float_to_int_cast_ops"}> ({
  ^bb0(%arg2: f32, %arg3: f64):
    %3 = "arith.fptosi"(%arg2) : (f32) -> i32
    %4 = "arith.fptosi"(%arg3) : (f64) -> i32
    %5 = "arith.fptosi"(%arg2) : (f32) -> i16
    %6 = "arith.fptosi"(%arg3) : (f64) -> i16
    %7 = "arith.fptoui"(%arg2) : (f32) -> i32
    %8 = "arith.fptoui"(%arg2) : (f32) -> i16
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, i64) -> (), sym_name = "arith_int_to_float_cast_ops"}> ({
  ^bb0(%arg0: i8, %arg1: i64):
    %0 = "arith.sitofp"(%arg0) : (i8) -> f32
    %1 = "arith.sitofp"(%arg1) : (i64) -> f32
    %2 = "arith.uitofp"(%arg0) : (i8) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

