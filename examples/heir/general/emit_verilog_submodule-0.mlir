"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> i8, sym_name = "submod"}> ({
  ^bb0(%arg1: i8):
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "arith.extsi"(%arg1) : (i8) -> i32
    %7 = "arith.subi"(%6, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %8 = "arith.muli"(%7, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %9 = "arith.addi"(%8, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %10 = "arith.trunci"(%9) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
    "func.return"(%10) : (i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (ui8) -> i8, sym_name = "main"}> ({
  ^bb0(%arg0: ui8):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (ui8) -> i8
    %1 = "func.call"(%0) <{callee = @submod}> : (i8) -> i8
    "func.return"(%1) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

