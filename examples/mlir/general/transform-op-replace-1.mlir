"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "bar"}> ({
  ^bb0(%arg1: i1):
    "another_op"(%arg1) : (i1) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["another_op"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.replace"(%0) ({
        "dummy_op"() : () -> ()
      }) : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

