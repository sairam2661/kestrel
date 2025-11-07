"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>, !secret.secret<i8>) -> !secret.secret<i8>, sym_name = "for_25_20_8"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: !secret.secret<i32>, %arg2: !secret.secret<i8>):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i8):
      %1 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      %2 = "arith.constant"() <{value = 1073741824 : i64}> : () -> i64
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = -1073741824 : i64}> : () -> i64
      %5 = "arith.constant"() <{value = 31 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = -128 : i32}> : () -> i32
      %7 = "arith.constant"() <{value = 127 : i32}> : () -> i32
      %8 = "arith.extui"(%arg5) : (i8) -> i32
      %9 = "arith.extsi"(%arg3) : (i32) -> i64
      %10 = "arith.extsi"(%arg4) : (i32) -> i64
      %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      %12 = "arith.extui"(%arg5) : (i8) -> i64
      %13 = "arith.shli"(%1, %12) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      %14 = "arith.shrui"(%13, %1) : (i64, i64) -> i64
      %15 = "arith.addi"(%11, %14) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      %16 = "arith.cmpi"(%arg3, %3) <{predicate = 5 : i64}> : (i32, i32) -> i1
      %17 = "arith.select"(%16, %2, %4) : (i1, i64, i64) -> i64
      %18 = "arith.addi"(%17, %15) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      %19 = "arith.cmpi"(%8, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %20 = "arith.select"(%19, %18, %15) : (i1, i64, i64) -> i64
      %21 = "arith.shrsi"(%20, %12) : (i64, i64) -> i64
      %22 = "arith.trunci"(%21) <{overflowFlags = #arith.overflow<none>}> : (i64) -> i32
      %23 = "arith.addi"(%22, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %24 = "arith.cmpi"(%23, %6) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %25 = "arith.select"(%24, %6, %23) : (i1, i32, i32) -> i32
      %26 = "arith.cmpi"(%23, %7) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %27 = "arith.select"(%26, %7, %25) : (i1, i32, i32) -> i32
      %28 = "arith.trunci"(%27) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
      "secret.yield"(%28) : (i8) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>, !secret.secret<i8>) -> !secret.secret<i8>
    "func.return"(%0) : (!secret.secret<i8>) -> ()
  }) : () -> ()
}) : () -> ()

