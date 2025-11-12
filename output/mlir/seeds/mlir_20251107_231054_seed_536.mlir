"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mystery_math"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.select"(%0, %1, %2) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()