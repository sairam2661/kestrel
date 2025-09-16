"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "xorxor"}> ({
  ^bb0(%arg4: i1):
    %6 = "arith.constant"() <{value = true}> : () -> i1
    %7 = "arith.xori"(%arg4, %6) : (i1, i1) -> i1
    %8 = "arith.xori"(%7, %6) : (i1, i1) -> i1
    "func.return"(%8) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, i8) -> i64, sym_name = "xorOfExtSI"}> ({
  ^bb0(%arg2: i8, %arg3: i8):
    %3 = "arith.extsi"(%arg2) : (i8) -> i64
    %4 = "arith.extsi"(%arg3) : (i8) -> i64
    %5 = "arith.xori"(%3, %4) : (i64, i64) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, i8) -> i64, sym_name = "xorOfExtUI"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "arith.extui"(%arg0) : (i8) -> i64
    %1 = "arith.extui"(%arg1) : (i8) -> i64
    %2 = "arith.xori"(%0, %1) : (i64, i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

