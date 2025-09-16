"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_signed_integer_div_rem"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

