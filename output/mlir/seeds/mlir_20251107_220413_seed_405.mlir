"builtin.module"() ({
  "func.func"() <{function_type = (i1, i8, i32) -> i32, sym_name = "mixed_integer_ops"}> ({
  ^bb0(%arg0: i1, %arg1: i8, %arg2: i32):
    %0 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i1, i8) -> i8
    %2 = "arith.addi"(%0, %1) : (i32, i8) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()