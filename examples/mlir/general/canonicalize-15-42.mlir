"builtin.module"() ({
  "func.func"() <{function_type = (i1, i64) -> (i32, i64), sym_name = "replace_if_with_cond3"}> ({
  ^bb0(%arg0: i1, %arg1: i64):
    %0:2 = "scf.if"(%arg0) ({
      %2 = "test.get_some_value"() : () -> i32
      "scf.yield"(%2, %arg1) : (i32, i64) -> ()
    }, {
      %1 = "test.get_some_value"() : () -> i32
      "scf.yield"(%1, %arg1) : (i32, i64) -> ()
    }) : (i1) -> (i32, i64)
    "func.return"(%0#0, %0#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()

