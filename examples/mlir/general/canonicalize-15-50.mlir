"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "while_unused_arg2"}> ({
  ^bb0(%arg0: i32):
    %0 = "scf.while"(%arg0) ({
    ^bb0(%arg2: i32):
      %2 = "test.val"() : () -> i32
      %3 = "test.condition"() : () -> i1
      "scf.condition"(%3, %2) : (i1, i32) -> ()
    }, {
    ^bb0(%arg1: i32):
      "test.use"(%arg1) : (i32) -> ()
      %1 = "test.val1"() : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

