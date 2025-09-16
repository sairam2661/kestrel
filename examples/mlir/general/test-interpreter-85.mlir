"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "match_func"}> ({
  ^bb0(%arg2: !transform.any_op):
    "transform.match.operation_name"(%arg2) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    "transform.yield"(%arg2) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "print_func"}> ({
  ^bb0(%arg1: !transform.any_op):
    "transform.debug.emit_remark_at"(%arg1) <{message = "matched func"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.foreach_match"(%arg0) <{actions = [@print_func], matchers = [@match_func]}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "payload"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "declaration", sym_visibility = "private"}> ({
  }) : () -> ()
  "test.something_else"() : () -> ()
}) {transform.with_named_sequence} : () -> ()

