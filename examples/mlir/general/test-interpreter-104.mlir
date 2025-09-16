"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "select"}> ({
    "test.foo"() : () -> ()
    "test.bar"() : () -> ()
    "test.foo"() : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%0) : (!transform.any_op) -> !transform.any_op
      %2 = "transform.num_associations"(%1) : (!transform.any_op) -> !transform.param<i64>
      "transform.debug.emit_param_as_remark"(%2) : (!transform.param<i64>) -> ()
      %3 = "transform.select"(%1) <{op_name = "test.foo"}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%3) <{message = "found foo"}> : (!transform.any_op) -> ()
      %4 = "transform.select"(%1) <{op_name = "test.bar"}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%4) <{message = "found bar"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

