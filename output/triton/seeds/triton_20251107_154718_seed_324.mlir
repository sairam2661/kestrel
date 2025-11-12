"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_operation"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %1, "sgt") : (i32, i32) -> i1
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "arith.select"(%3, %4, %5) : (i1, i32, i32) -> i32
    %7 = "arith.subi"(%2, %6) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %8 = "arith.divsi"(%7, %0) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %9 = "arith.remsi"(%7, %0) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %10 = "arith.xori"(%8, %9) : (i32, i32) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) : () -> ()