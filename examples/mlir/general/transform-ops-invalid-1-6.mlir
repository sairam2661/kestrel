"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "cond", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "body", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "loop_outline_op_multi_region"}> ({
    "scf.while"() ({
      %2 = "func.call"() <{callee = @cond}> : () -> i1
      "scf.condition"(%2) : (i1) -> ()
    }, {
      "func.call"() <{callee = @body}> : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["scf.while"]}> : (!transform.any_op) -> !transform.any_op
      %1:2 = "transform.loop.outline"(%0) <{func_name = "foo"}> : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

