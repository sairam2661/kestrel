"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg0) : (i32, i32) -> i32
    %2 = "arith.xori"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg0, %arg1) : (i1, i32, i32) -> i32
    %5 = "arith.divsi"(%4, %arg1) : (i32, i32) -> i32
    %6 = "arith.remsi"(%5, %arg0) : (i32, i32) -> i32
    %7 = "arith.addi"(%6, %arg1) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()