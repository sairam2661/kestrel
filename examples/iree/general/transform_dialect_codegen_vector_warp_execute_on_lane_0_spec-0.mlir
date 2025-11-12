"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["scf.if"]}> : (!transform.any_op) -> !transform.any_op
    %1 = "transform.iree.vector.to_warp_execute_on_lane_0"(%0) <{warp_size = 32 : i64}> : (!transform.any_op) -> !transform.any_op
    %2 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
    "transform.apply_patterns"(%2) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
      "transform.apply_patterns.canonicalization"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.iree.apply_licm"(%2) : (!transform.any_op) -> ()
    "transform.apply_cse"(%2) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

