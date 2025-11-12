"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowMode} > : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflowMode}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0, "sgt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %0) : (i1, i32, i32) -> i32
    %5 = "arith.divsi"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.remsi"(%4, %0) : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> i32
}) : () -> ()