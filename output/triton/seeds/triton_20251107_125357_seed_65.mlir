"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %arg0) : (i32, i32) -> i32
    %3 = "arith.remsi"(%2, %arg1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg1, "sgt") : (i32, i32, i32) -> i1
    %5 = "arith.select"(%4, %arg0, %arg1) : (i1, i32, i32) -> i32
    %6 = "arith.xori"(%5, %arg0) : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %arg1) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()