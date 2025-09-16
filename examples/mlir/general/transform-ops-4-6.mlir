"builtin.module"() ({
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %1 = "transform.structured.match"(%arg0) <{ops = ["tensor.empty"]}> : (!transform.any_op) -> !transform.any_op
      %2 = "transform.cast"(%1) : (!transform.any_op) -> !transform.op<"tensor.empty">
      %3 = "transform.bufferization.empty_tensor_to_alloc_tensor"(%2) : (!transform.op<"tensor.empty">) -> !transform.op<"bufferization.alloc_tensor">
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
  "func.func"() <{function_type = () -> tensor<2x2xf32>, sym_name = "empty_to_tensor_alloc"}> ({
    %0 = "tensor.empty"() : () -> tensor<2x2xf32>
    "func.return"(%0) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

