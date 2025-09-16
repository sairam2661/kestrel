"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> i64, sym_name = "andOfExtSI"}> ({
  ^bb0(%arg6: i8, %arg7: i8):
    %9 = "arith.extsi"(%arg6) : (i8) -> i64
    %10 = "arith.extsi"(%arg7) : (i8) -> i64
    %11 = "arith.andi"(%9, %10) : (i64, i64) -> i64
    "func.return"(%11) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, i8) -> i64, sym_name = "andOfExtUI"}> ({
  ^bb0(%arg4: i8, %arg5: i8):
    %6 = "arith.extui"(%arg4) : (i8) -> i64
    %7 = "arith.extui"(%arg5) : (i8) -> i64
    %8 = "arith.andi"(%6, %7) : (i64, i64) -> i64
    "func.return"(%8) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, i8) -> i64, sym_name = "orOfExtSI"}> ({
  ^bb0(%arg2: i8, %arg3: i8):
    %3 = "arith.extsi"(%arg2) : (i8) -> i64
    %4 = "arith.extsi"(%arg3) : (i8) -> i64
    %5 = "arith.ori"(%3, %4) : (i64, i64) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, i8) -> i64, sym_name = "orOfExtUI"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "arith.extui"(%arg0) : (i8) -> i64
    %1 = "arith.extui"(%arg1) : (i8) -> i64
    %2 = "arith.ori"(%0, %1) : (i64, i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

