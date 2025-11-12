"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32, i32), sym_name = "complexArithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %6 = "arith.divsi"(%5, %2) : (i32, i32) -> i32
    "func.return"(%3, %4, %6) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()