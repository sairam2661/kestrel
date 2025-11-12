"builtin.module"() ({
  "util.func"() <{function_type = (i32, i32) -> (), sym_name = "utilAlignInt", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "util.align"(%arg0, %arg1) : (i32, i32) -> i32
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

