"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.remsi"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.divsi"(%5, %1) : (i32, i32) -> i32
    %7 = "arith.xori"(%6, %0) : (i32, i32) -> i32
    %8 = "arith.cmpi"(%7, %1, "slt") : (i32, i32) -> i1
    %9 = "arith.select"(%8, %7, %2) : (i1, i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}
) : () -> ()