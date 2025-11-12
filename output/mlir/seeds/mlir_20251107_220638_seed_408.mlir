"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi32>, tensor<4x5xi32>) -> tensor<4x5xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<4x5xi32>, %arg1: tensor<4x5xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowmodeAttr}> : (tensor<4x5xi32>, tensor<4x5xi32>) -> tensor<4x5xi32>
    "func.return"(%0) : (tensor<4x5xi32>) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform_any_op) -> (), sym_name = "patterns"}> ({
  ^bb1(%arg2: !transform_any_op):
    "transform.apply_patterns"(%arg2) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
      "transform.apply_patterns.transform.test_patterns"() : () -> ()
    }) : (!transform_any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform_any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb2(%arg3: !transform_any_op):
    %1 = "transform.structured.match"(%arg3) <{ops = ["func.func"]}> : (!transform_any_op) -> !transform_any_op
    %2 = "transform.structured.match"(%arg3) <{ops = ["arith.addi"]}> : (!transform_any_op) -> !transform_any_op
    "transform.annotate"(%2) <{name = "annotated_add"}> : (!transform_any_op) -> ()
    "transform.include"(%1) <{failure_propagation_mode = 1 : i32, target = @patterns}> : (!transform_any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()