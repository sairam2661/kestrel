"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 42}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %1, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %1) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()