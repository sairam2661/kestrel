"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i1, sym_name = "simpleCFG"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "foo"() : () -> i64
    %1:3 = "bar"(%0) : (i64) -> (i1, i1, i1)
    "func.return"(%1#1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

