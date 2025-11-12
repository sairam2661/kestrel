"builtin.module"() ({
  "func.func"() <{function_type = (f64, i8) -> (f64, i8), sym_name = "mixedTypesOp"}> ({
  ^bb0(%arg0: f64, %arg1: i8):
    %0 = "arith.addf"(%arg0, %arg0) : (f64, f64) -> f64
    %1 = "arith.muli"(%arg1, %arg1) : (i8, i8) -> i8
    %2 = "arith.addi"(%1, %1) : (i8, i8) -> i8
    %3 = "arith.subf"(%0, %arg0) : (f64, f64) -> f64
    %4 = "arith.subi"(%2, %arg1) : (i8, i8) -> i8
    %5 = "arith.extsi"(%4) : (i8) -> i32
    %6 = "arith.sdivi"(%5, %5) : (i32, i32) -> i32
    %7 = "arith.extui"(%6) : (i32) -> i64
    %8 = "arith.sdivi"(%7, %7) : (i64, i64) -> i64
    %9 = "arith.fadd"(%3, %3) : (f64, f64) -> f64
    %10 = "arith.fsub"(%9, %arg0) : (f64, f64) -> f64
    %11 = "arith.fdiv"(%10, %arg0) : (f64, f64) -> f64
    %12 = "arith.fmul"(%11, %arg0) : (f64, f64) -> f64
    %13 = "arith.fdiv"(%12, %arg0) : (f64, f64) -> f64
    "func.return"(%13, %arg1) : (f64, i8) -> ()
  }) : () -> ()
}) : () -> ()