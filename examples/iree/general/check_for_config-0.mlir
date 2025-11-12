"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "no_lowering_config"}> ({
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.constant"]}> : (!transform.any_op) -> !transform.any_op
      "transform.iree.match.has_no_lowering_config"(%0) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

