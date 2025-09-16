"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "arith_cmpi_eq"}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %15 = "arith.cmpi"(%arg6, %arg7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "func.return"(%15) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "arith_cmpi_ult"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %14 = "arith.cmpi"(%arg4, %arg5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "func.return"(%14) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_cmpi_predicates"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %4 = "arith.cmpi"(%arg2, %arg3) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %5 = "arith.cmpi"(%arg2, %arg3) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %6 = "arith.cmpi"(%arg2, %arg3) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %7 = "arith.cmpi"(%arg2, %arg3) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %8 = "arith.cmpi"(%arg2, %arg3) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %9 = "arith.cmpi"(%arg2, %arg3) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %10 = "arith.cmpi"(%arg2, %arg3) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %11 = "arith.cmpi"(%arg2, %arg3) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %12 = "arith.cmpi"(%arg2, %arg3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %13 = "arith.cmpi"(%arg2, %arg3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "arith_cmpi_index"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.index_cast"(%arg0) : (i32) -> index
    %1 = "arith.index_cast"(%arg0) : (i32) -> index
    %2 = "arith.cmpi"(%0, %1) <{predicate = 6 : i64}> : (index, index) -> i1
    %3 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (index, index) -> i1
    "func.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

