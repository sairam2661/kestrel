"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %1) <{predicate = #arith_cmp_signed_gt}> : (i32, i32) -> i1
    %4 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.remsi"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.select"(%3, %2, %5) : (i1, i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()