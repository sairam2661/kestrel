"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "xorxor0"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.xori"(%0, %arg1) : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

