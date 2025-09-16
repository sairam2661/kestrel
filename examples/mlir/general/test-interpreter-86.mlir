"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "eq_1"}> ({
  ^bb0(%arg7: !transform.any_op):
    "transform.match.operation_name"(%arg7) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    %16 = "transform.test_produce_param_with_number_of_test_ops"(%arg7) : (!transform.any_op) -> !transform.test_dialect_param
    %17 = "transform.param.constant"() <{value = 1 : i32}> : () -> !transform.test_dialect_param
    "transform.match.param.cmpi"(%16, %17) <{predicate = 0 : i32}> : (!transform.test_dialect_param, !transform.test_dialect_param) -> ()
    "transform.debug.emit_remark_at"(%arg7) <{message = "matched == 1"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg7) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "ne_0"}> ({
  ^bb0(%arg6: !transform.any_op):
    "transform.match.operation_name"(%arg6) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    %14 = "transform.test_produce_param_with_number_of_test_ops"(%arg6) : (!transform.any_op) -> !transform.test_dialect_param
    %15 = "transform.param.constant"() <{value = 0 : i32}> : () -> !transform.test_dialect_param
    "transform.match.param.cmpi"(%14, %15) <{predicate = 1 : i32}> : (!transform.test_dialect_param, !transform.test_dialect_param) -> ()
    "transform.debug.emit_remark_at"(%arg6) <{message = "matched != 0"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg6) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "gt_m1"}> ({
  ^bb0(%arg5: !transform.any_op):
    "transform.match.operation_name"(%arg5) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    %12 = "transform.test_produce_param_with_number_of_test_ops"(%arg5) : (!transform.any_op) -> !transform.test_dialect_param
    %13 = "transform.param.constant"() <{value = -1 : i32}> : () -> !transform.test_dialect_param
    "transform.match.param.cmpi"(%12, %13) <{predicate = 4 : i32}> : (!transform.test_dialect_param, !transform.test_dialect_param) -> ()
    "transform.debug.emit_remark_at"(%arg5) <{message = "matched > -1"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg5) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "ge_1"}> ({
  ^bb0(%arg4: !transform.any_op):
    "transform.match.operation_name"(%arg4) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    %10 = "transform.test_produce_param_with_number_of_test_ops"(%arg4) : (!transform.any_op) -> !transform.test_dialect_param
    %11 = "transform.param.constant"() <{value = 1 : i32}> : () -> !transform.test_dialect_param
    "transform.match.param.cmpi"(%10, %11) <{predicate = 5 : i32}> : (!transform.test_dialect_param, !transform.test_dialect_param) -> ()
    "transform.debug.emit_remark_at"(%arg4) <{message = "matched >= 1"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg4) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "lt_1"}> ({
  ^bb0(%arg3: !transform.any_op):
    "transform.match.operation_name"(%arg3) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    %8 = "transform.test_produce_param_with_number_of_test_ops"(%arg3) : (!transform.any_op) -> !transform.test_dialect_param
    %9 = "transform.param.constant"() <{value = 1 : i32}> : () -> !transform.test_dialect_param
    "transform.match.param.cmpi"(%8, %9) <{predicate = 2 : i32}> : (!transform.test_dialect_param, !transform.test_dialect_param) -> ()
    "transform.debug.emit_remark_at"(%arg3) <{message = "matched < 1"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg3) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "le_1"}> ({
  ^bb0(%arg2: !transform.any_op):
    "transform.match.operation_name"(%arg2) <{op_names = ["func.func"]}> : (!transform.any_op) -> ()
    %6 = "transform.test_produce_param_with_number_of_test_ops"(%arg2) : (!transform.any_op) -> !transform.test_dialect_param
    %7 = "transform.param.constant"() <{value = 1 : i32}> : () -> !transform.test_dialect_param
    "transform.match.param.cmpi"(%6, %7) <{predicate = 3 : i32}> : (!transform.test_dialect_param, !transform.test_dialect_param) -> ()
    "transform.debug.emit_remark_at"(%arg2) <{message = "matched <= 1"}> : (!transform.any_op) -> ()
    "transform.yield"(%arg2) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "do_nothing"}> ({
  ^bb0(%arg1: !transform.any_op):
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.foreach_match"(%arg0) <{actions = [@do_nothing], matchers = [@eq_1]}> : (!transform.any_op) -> !transform.any_op
    %1 = "transform.foreach_match"(%0) <{actions = [@do_nothing], matchers = [@ne_0]}> : (!transform.any_op) -> !transform.any_op
    %2 = "transform.foreach_match"(%1) <{actions = [@do_nothing], matchers = [@gt_m1]}> : (!transform.any_op) -> !transform.any_op
    %3 = "transform.foreach_match"(%2) <{actions = [@do_nothing], matchers = [@ge_1]}> : (!transform.any_op) -> !transform.any_op
    %4 = "transform.foreach_match"(%3) <{actions = [@do_nothing], matchers = [@lt_1]}> : (!transform.any_op) -> !transform.any_op
    %5 = "transform.foreach_match"(%4) <{actions = [@do_nothing], matchers = [@le_1]}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "declaration", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "definition"}> ({
    "test.something"() : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

