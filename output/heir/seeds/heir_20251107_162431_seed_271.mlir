"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> (i32, i32), sym_name = "complex_add_and_sub"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.subi"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%arg2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%1, %5) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()