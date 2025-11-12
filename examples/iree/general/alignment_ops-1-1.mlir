"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "utilAlignInt32"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "util.align"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

