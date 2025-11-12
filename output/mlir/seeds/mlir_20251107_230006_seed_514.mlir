"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i1, sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = "sgt"}> : (i32, i32) -> i1
    %4 = "arith.cmpi"(%arg1, %1) <{predicate = "slt"}> : (i64, i64) -> i1
    %5 = "arith.andi"(%3, %4) : (i1, i1) -> i1
    "func.return"(%5) : (i1) -> ()
  }) : () -> ()
}) : () -> ()