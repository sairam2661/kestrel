"builtin.module"() ({
  "builtin.module"() ({
    "func.func"() <{function_type = (ui8) -> i8, sym_name = "main"}> ({
    ^bb0(%arg1: ui8):
      %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %8 = "builtin.unrealized_conversion_cast"(%arg1) : (ui8) -> i8
      %9 = "arith.extsi"(%8) : (i8) -> i32
      %10 = "arith.subi"(%9, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %11 = "arith.muli"(%10, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %12 = "arith.addi"(%11, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %13 = "arith.cmpi"(%11, %4) <{predicate = 5 : i64}> : (i32, i32) -> i1
      %14 = "arith.select"(%13, %5, %6) : (i1, i32, i32) -> i32
      %15 = "arith.shrsi"(%12, %5) : (i32, i32) -> i32
      %16 = "arith.shrui"(%12, %5) : (i32, i32) -> i32
      %17 = "arith.extui"(%8) : (i8) -> i32
      %18 = "arith.andi"(%16, %5) : (i32, i32) -> i32
      %19 = "arith.maxsi"(%16, %15) : (i32, i32) -> i32
      %20 = "arith.minsi"(%19, %18) : (i32, i32) -> i32
      %21 = "arith.trunci"(%20) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
      "func.return"(%21) : (i8) -> ()
    }) : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "func.func"() <{function_type = (ui8) -> ui8, sym_name = "test_unrealized_conversion_cast"}> ({
    ^bb0(%arg0: ui8):
      %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
      %1 = "builtin.unrealized_conversion_cast"(%arg0) : (ui8) -> i8
      %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
      %3 = "builtin.unrealized_conversion_cast"(%2) : (i8) -> ui8
      "func.return"(%3) : (ui8) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

