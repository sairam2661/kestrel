"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "utilAlignInt64"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "util.align"(%arg0, %arg1) : (i64, i64) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

