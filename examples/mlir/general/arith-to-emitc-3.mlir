"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_integer_ops_signed_nsw"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nsw>}> : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nsw>}> : (i32, i32) -> i32
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nsw>}> : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

