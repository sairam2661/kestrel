"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowModes}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflowModes}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflowModes}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %arg0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%5, %arg1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()