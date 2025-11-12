"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> (i32, i32, i32), sym_name = "complexArithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg2, %0) : (i32, i32) -> i32
    %2 = "arith.muli"(%arg1, %arg2) : (i32, i32) -> i32
    %3 = "arith.divui"(%2, %arg0) : (i32, i32) -> i32
    "func.return"(%1, %3, %0) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()