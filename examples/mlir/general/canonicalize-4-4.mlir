"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i64, sym_name = "extSIOfExtUI"}> ({
  ^bb0(%arg2: i1):
    %4 = "arith.extui"(%arg2) : (i1) -> i8
    %5 = "arith.extsi"(%4) : (i8) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i64, sym_name = "extUIOfExtUI"}> ({
  ^bb0(%arg1: i1):
    %2 = "arith.extui"(%arg1) : (i1) -> i8
    %3 = "arith.extui"(%2) : (i8) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i64, sym_name = "extSIOfExtSI"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.extsi"(%arg0) : (i1) -> i8
    %1 = "arith.extsi"(%0) : (i8) -> i64
    "func.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

