"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32, i32) -> i32, sym_name = "unusual_multiplication_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addi"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.muli"(%5, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.subi"(%6, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()