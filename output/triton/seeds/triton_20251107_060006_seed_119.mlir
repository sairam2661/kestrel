"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "triton_complex"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %2 = "arith.subi"(%arg1, %arg0) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %0) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %5 = "arith.remsi"(%3, %1) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %6 = "arith.cmpi"(%4, %5) <{predicate = "sgt"}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %4, %5) <{}> : (i1, i32, i32) -> i32
    %8 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()