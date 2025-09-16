"builtin.module"() ({
  "func.func"() <{function_type = (i32, f64) -> i32, sym_name = "while_unused_arg1"}> ({
  ^bb0(%arg0: i32, %arg1: f64):
    %0 = "scf.while"(%arg0, %arg1) ({
    ^bb0(%arg3: i32, %arg4: f64):
      %2 = "test.condition"(%arg3) : (i32) -> i1
      "scf.condition"(%2, %arg3) : (i1, i32) -> ()
    }, {
    ^bb0(%arg2: i32):
      %1 = "test.use"(%arg2) : (i32) -> i32
      "scf.yield"(%1, %arg1) : (i32, f64) -> ()
    }) : (i32, f64) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

