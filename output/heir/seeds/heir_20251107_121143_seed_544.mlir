"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32):
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.muli"(%arg0, %3) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %5 = "arith.cmpi"(%arg0, %4, "slt") : (i32, i32) -> i1
    %6 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %7 = "arith.select"(%5, %6, %arg0) : (i1, i32, i32) -> i32
    %8 = "arith.addi"(%7, %3) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()