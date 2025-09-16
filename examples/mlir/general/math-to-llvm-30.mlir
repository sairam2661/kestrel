"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "ctpop"}> ({
  ^bb0(%arg0: i32):
    %0 = "math.ctpop"(%arg0) : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

