"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "cmpOfExtSI"}> ({
  ^bb0(%arg1: i1):
    %3 = "arith.extsi"(%arg1) : (i1) -> i64
    %4 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "arith.cmpi"(%3, %4) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "func.return"(%5) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i1, sym_name = "cmpOfExtUI"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.extui"(%arg0) : (i1) -> i64
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "arith.cmpi"(%0, %1) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

