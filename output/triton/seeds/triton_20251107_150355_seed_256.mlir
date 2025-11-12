"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %6 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %7 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    %8 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %9 = "arith.select"(%8, %5, %6) : (i1, i32, i32) -> i32
    %10 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %11 = "arith.addi"(%10, %2) : (i32, i32) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()