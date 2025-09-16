"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "test_mixed_loop_extension_scf_transform"}> ({
  ^bb0(%arg1: tensor<?xf32>):
    %1 = "test.foo"() : () -> index
    %2 = "test.foo"() : () -> index
    %3 = "test.foo"() : () -> index
    %4 = "scf.for"(%1, %2, %3, %arg1) ({
    ^bb0(%arg2: index, %arg3: tensor<?xf32>):
      %5 = "test.foo"(%arg3) : (tensor<?xf32>) -> tensor<?xf32>
      "scf.yield"(%5) : (tensor<?xf32>) -> ()
    }) : (index, index, index, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%4) : (tensor<?xf32>) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["scf.for"]}> : (!transform.any_op) -> !transform.any_op
      "transform.loop.hoist_loop_invariant_subsets"(%0) : (!transform.any_op) -> ()
      "transform.loop.unroll"(%0) <{factor = 4 : i64}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

