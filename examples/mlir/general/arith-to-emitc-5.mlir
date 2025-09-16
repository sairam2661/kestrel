"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_bitwise"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.andi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.ori"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

