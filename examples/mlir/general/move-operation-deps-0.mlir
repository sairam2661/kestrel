"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "simple_move"}> ({
    %2 = "before"() : () -> f32
    %3 = "moved_op"() : () -> f32
    %4 = "foo"(%3) : (f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["foo"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%arg0) <{ops = ["before"]}> : (!transform.any_op) -> !transform.any_op
      "transform.test.move_operand_deps"(%0, %1) : (!transform.any_op, !transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

