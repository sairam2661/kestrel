"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "map_forall_to_blocks_not_gpu_launch"}> ({
    %2 = "tensor.empty"() : () -> tensor<4xf32>
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["tensor.empty"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.gpu.map_forall_to_blocks"(%0) : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

