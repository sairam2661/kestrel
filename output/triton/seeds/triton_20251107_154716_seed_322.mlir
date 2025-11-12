"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %arg1) <{signedness = #arith_signed, overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %arg0) <{predicate = "slt"}> : (i32, i32) -> i1
    %6 = "arith.select"(%5, %4, %0) <{trueValue = #arith_zero, falseValue = #arith_one}> : (i1, i32, i32) -> i32
    %7 = "arith.xori"(%6, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.remsi"(%7, %arg1) <{signedness = #arith_signed}> : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()