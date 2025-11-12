"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %arg1) : (i32, i32) -> i32
    %5 = "arith.xori"(%4, %arg0) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %arg0, "eq") : (i32, i32) -> i1
    %7 = "arith.select"(%6, %4, %2) : (i1, i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()