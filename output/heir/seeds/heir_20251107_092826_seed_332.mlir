"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith_mixed"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %2, %3) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()