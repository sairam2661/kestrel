"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "absi"}> ({
  ^bb0(%arg0: i32):
    %0 = "math.absi"(%arg0) : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

