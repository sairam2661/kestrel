"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transformany_op) -> (), sym_name = "complex_patterns"}> ({
  ^bb0(%arg1: !transformany_op):
    %0 = "transform.structured.match"(%arg1) <{ops = ["func.func", "scf.for"]}> : (!transformany_op) -> !transformany_op
    %1 = "transform.structured.match"(%arg1) <{ops = ["tosa.logical_and"]}> : (!transformany_op) -> !transformany_op
    "transform.apply_patterns"(%1) <{max_iterations = 10 : i64, max_num_rewrites = 5 : i64}> ({
      "transform.apply_patterns.logical_and_to_or"() : () -> ()
    }) : (!transformany_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transformany_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transformany_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transformany_op) -> !transformany_op
    %1 = "transform.structured.match"(%arg0) <{ops = ["scf.for"]}> : (!transformany_op) -> !transformany_op
    "transform.apply_patterns"(%1) <{max_iterations = 10 : i64, max_num_rewrites = 5 : i64}> ({
      "transform.apply_patterns.simplify_for_loops"() : () -> ()
    }) : (!transformany_op) -> ()
    "transform.include"(%0) <{failure_propagation_mode = 1 : i32, target = @complex_patterns}> : (!transformany_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()