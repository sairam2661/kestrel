"builtin.module"() ({
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg2: !transform.any_op):
      %0 = "transform.structured.match"(%arg2) <{ops = ["func.return"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.split"(%0) <{dimension = 1 : i64, static_chunk_sizes = 16 : i64}> : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
  "func.func"() <{function_type = (tensor<100xf32>, tensor<100xf32>) -> tensor<100xf32>, sym_name = "noop"}> ({
  ^bb0(%arg0: tensor<100xf32>, %arg1: tensor<100xf32>):
    "func.return"(%arg0) : (tensor<100xf32>) -> ()
  }) : () -> ()
}) : () -> ()

