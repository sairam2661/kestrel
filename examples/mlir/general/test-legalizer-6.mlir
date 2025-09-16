"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "remap_input_to_self"}> ({
  ^bb0(%arg3: index):
    "work"(%arg3) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64, i16, i64) -> (i64, i64), sym_name = "remap_multi"}> ({
  ^bb0(%arg0: i64, %arg1: i16, %arg2: i64):
    "test.invalid"(%arg0, %arg2) : (i64, i64) -> ()
  }) : () -> ()
}) : () -> ()

