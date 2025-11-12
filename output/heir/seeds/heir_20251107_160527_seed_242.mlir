"builtin.module"() ({
  "func.func"() <{function_type = (!secret, !secret) -> !secret, sym_name = "complex_cross_dialect"}> ({
  ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (!secret, index) -> i32
    %2 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "tensor.extract"(%arg1, %4) : (!secret, index) -> i32
    %6 = "arith.muli"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.addi"(%3, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %9 = "arith.cmpi"(%7, %8) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %10 = "arith.select"(%9, %7, %8) : (i1, i32, i32) -> i32
    "func.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()