"builtin.module"() ({
  "func.func"() <{function_type = () -> (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1), sym_name = "cmpi"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %3 = "arith.cmpi"(%0, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %4 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %5 = "arith.cmpi"(%0, %1) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %6 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.cmpi"(%0, %1) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %8 = "arith.cmpi"(%0, %1) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %9 = "arith.cmpi"(%0, %1) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %10 = "arith.cmpi"(%0, %1) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %11 = "arith.cmpi"(%0, %1) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "func.return"(%2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

