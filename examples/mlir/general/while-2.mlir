"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i64, sym_name = "while_loop_before_typeconv"}> ({
  ^bb0(%arg0: index):
    %0 = "scf.while"(%arg0) ({
    ^bb0(%arg2: index):
      %2 = "foo.shared_compute"(%arg2) : (index) -> i64
      %3 = "foo.evaluate_condition"(%arg2, %2) : (index, i64) -> i1
      "scf.condition"(%3, %2) : (i1, i64) -> ()
    }, {
    ^bb0(%arg1: i64):
      %1 = "foo.payload"(%arg1) : (i64) -> index
      "scf.yield"(%1) : (index) -> ()
    }) : (index) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

