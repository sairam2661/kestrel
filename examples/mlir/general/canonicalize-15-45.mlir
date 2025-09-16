"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "while_unused_result"}> ({
    %0:2 = "scf.while"() ({
      %1 = "test.condition"() : () -> i1
      %2 = "test.get_some_value"() : () -> i32
      %3 = "test.get_some_value"() : () -> i64
      "scf.condition"(%1, %2, %3) : (i1, i32, i64) -> ()
    }, {
    ^bb0(%arg0: i32, %arg1: i64):
      "test.use"(%arg0) : (i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> (i32, i64)
    "func.return"(%0#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

