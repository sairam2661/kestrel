"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> (i32), sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %arg2) <{signedness = #arith_signed}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %arg0) <{signedness = #arith_signed}> : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %arg1, "slt") <{predicate = "slt"}> : (i32, i32) -> i1
    %6 = "arith.select"(%5, %arg2, %arg0) <{operandType = i32}> : (i1, i32, i32) -> i32
    %7 = "arith.xori"(%6, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()