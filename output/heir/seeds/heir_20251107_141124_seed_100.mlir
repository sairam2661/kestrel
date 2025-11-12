"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %6 = "arith.select"(%5, %3, %4) : (i1, i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()