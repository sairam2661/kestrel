"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<3xf32>) -> (tensor<3xf32>, tensor<2xf32>), sym_name = "multi_barrier_region"}> ({
  ^bb0(%arg1: tensor<2xf32>, %arg2: tensor<3xf32>):
    %1:2 = "iree_gpu.barrier_region"(%arg1, %arg2) ({
    ^bb0(%arg3: tensor<2xf32>, %arg4: tensor<3xf32>):
      "iree_gpu.yield"(%arg4, %arg3) : (tensor<3xf32>, tensor<2xf32>) -> ()
    }) : (tensor<2xf32>, tensor<3xf32>) -> (tensor<3xf32>, tensor<2xf32>)
    "func.return"(%1#0, %1#1) : (tensor<3xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      "transform.apply_patterns"(%0) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
        "transform.apply_patterns.iree.lower_barrier_region"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

