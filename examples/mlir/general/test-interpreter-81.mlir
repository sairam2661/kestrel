"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "match1"}> ({
  ^bb0(%arg4: !transform.any_op):
    "transform.test_succeed_if_operand_of_op_kind"(%arg4) <{op_kind = "test.some_op"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg4) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "match2"}> ({
  ^bb0(%arg3: !transform.any_op):
    "transform.test_succeed_if_operand_of_op_kind"(%arg3) <{op_kind = "func.func"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg3) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "action1"}> ({
  ^bb0(%arg2: !transform.any_op):
    "transform.debug.emit_remark_at"(%arg2) <{message = "matched1"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "action2"}> ({
  ^bb0(%arg1: !transform.any_op):
    "transform.debug.emit_remark_at"(%arg1) <{message = "matched2"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.foreach_match"(%arg0) <{actions = [@action1, @action2], matchers = [@match1, @match2]}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "foo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "bar", sym_visibility = "private"}> ({
  }) : () -> ()
  "test.testtest"() : () -> ()
  "test.some_op"() : () -> ()
}) {transform.with_named_sequence} : () -> ()

