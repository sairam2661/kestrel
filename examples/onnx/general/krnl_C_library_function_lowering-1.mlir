"builtin.module"() ({
  "func.func"() <{function_type = (!krnl.string) -> i64, sym_name = "test_krnl_strlen1", sym_visibility = "private"}> ({
  ^bb0(%arg0: !krnl.string):
    %0 = "krnl.strlen"(%arg0) : (!krnl.string) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

