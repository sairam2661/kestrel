"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "unusual_arith_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "eq") : (i32, i32) -> i1
    %3 = "arith.cmpi"(%arg2, %0, "ne") : (i32, i32) -> i1
    %4 = "arith.andi"(%2, %3) : (i1, i1) -> i1
    %5 = "arith.select"(%4, %arg0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()