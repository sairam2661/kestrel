"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f64, sym_name = "verify_failure"}> ({
  ^bb0(%arg1: f64):
    "func.return"(%arg1) : (f64) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      "transform.test_produce_invalid_ir"(%0) : (!transform.any_op) -> ()
      "transform.verify"(%0) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

