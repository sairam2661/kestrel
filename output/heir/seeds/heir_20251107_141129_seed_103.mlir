"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add_sub"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = "slt"}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()