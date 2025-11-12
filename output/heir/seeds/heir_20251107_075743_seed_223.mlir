"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg2) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()