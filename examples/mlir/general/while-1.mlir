"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i64, sym_name = "while_loop2"}> ({
  ^bb0(%arg0: f32):
    %0 = "scf.while"(%arg0) ({
    ^bb0(%arg2: f32):
      %2 = "foo.shared_compute"(%arg2) : (f32) -> i64
      %3 = "foo.evaluate_condition"(%arg2, %2) : (f32, i64) -> i1
      "scf.condition"(%3, %2) : (i1, i64) -> ()
    }, {
    ^bb0(%arg1: i64):
      %1 = "foo.payload"(%arg1) : (i64) -> f32
      "scf.yield"(%1) : (f32) -> ()
    }) : (f32) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

