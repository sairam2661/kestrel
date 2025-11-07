"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64, i64, i64, i64, i64, i64, i64) -> i64, sym_name = "top"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i64, i64) -> i64
    %2 = "arith.cmpi"(%arg2, %arg3) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %3 = "arith.select"(%2, %arg2, %arg3) : (i1, i64, i64) -> i64
    %4 = "arith.cmpi"(%arg4, %arg5) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %5 = "arith.select"(%4, %arg4, %arg5) : (i1, i64, i64) -> i64
    %6 = "arith.cmpi"(%arg6, %arg7) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %7 = "arith.select"(%6, %arg6, %arg7) : (i1, i64, i64) -> i64
    %8 = "arith.cmpi"(%1, %3) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %9 = "arith.select"(%8, %1, %3) : (i1, i64, i64) -> i64
    %10 = "arith.cmpi"(%5, %7) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %11 = "arith.select"(%10, %5, %7) : (i1, i64, i64) -> i64
    %12 = "arith.cmpi"(%9, %11) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %13 = "arith.select"(%12, %9, %11) : (i1, i64, i64) -> i64
    "func.return"(%13) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

