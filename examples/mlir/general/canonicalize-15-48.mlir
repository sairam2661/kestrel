"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "while_duplicated_res"}> ({
    %0:2 = "scf.while"() ({
      %1 = "test.val"() : () -> i32
      %2 = "test.condition"() : () -> i1
      "scf.condition"(%2, %1, %1) : (i1, i32, i32) -> ()
    }, {
    ^bb0(%arg0: i32, %arg1: i32):
      "test.use"(%arg0, %arg1) : (i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> (i32, i32)
    "func.return"(%0#0, %0#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

