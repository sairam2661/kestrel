"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %2) : (i32, i32) -> i32
    %6 = "arith.remsi"(%4, %2) : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, %arg0, "slt") : (i32, i32) -> i1
    %8 = "arith.select"(%7, %5, %arg0) : (i1, i32, i32) -> i32
    %9 = "arith.xori"(%8, %1) : (i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()