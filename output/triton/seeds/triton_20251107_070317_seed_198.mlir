"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, 3) : (i32, i32) -> i1
    %3 = "arith.divsi"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.remsi"(%0, %1) : (i32, i32) -> i32
    %5 = "arith.xori"(%0, %1) : (i32, i32) -> i32
    %6 = "arith.select"(%2, %3, %4) : (i1, i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()