"builtin.module"() ({
  "builtin.module"() ({
    "func.func"() <{function_type = () -> (), sym_name = "f", sym_visibility = "private"}> ({
    }) : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.dlti.query"(%0) <{keys = ["CPU", "test.id"]}> : (!transform.any_op) -> !transform.any_param
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

