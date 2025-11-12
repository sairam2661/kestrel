"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "arith.divsi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, %arg0, "ne") : (i32, i32) -> i1
    %8 = "arith.select"(%7, %6, %arg0) <{predicate = "ne"}> : (i1, i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()