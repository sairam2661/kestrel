"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "edge_case_math"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.divsi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.remsi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.xori"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.cmpi"(%0, %1, "sgt") <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i1
    %9 = "arith.select"(%8, %2, %3) <{overflowFlags = #arith_overflownone}> : (i1, i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()