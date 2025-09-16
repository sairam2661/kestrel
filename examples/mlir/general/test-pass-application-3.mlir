"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> index, sym_name = "not_isolated_from_above"}> ({
  ^bb0(%arg1: tensor<5xf32>):
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "tensor.dim"(%arg1, %2) : (tensor<5xf32>, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["tensor.dim"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.apply_registered_pass"(%0) <{options = {}, pass_name = "canonicalize"}> : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

