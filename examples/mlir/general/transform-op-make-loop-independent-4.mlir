#map = affine_map<(d0)[s0] -> (-d0 + s0)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "make_empty_loop_independent"}> ({
  ^bb0(%arg1: index, %arg2: index, %arg3: index):
    "scf.for"(%arg1, %arg2, %arg3) ({
    ^bb0(%arg4: index):
      %2 = "affine.apply"(%arg4, %arg2) <{map = #map}> : (index, index) -> index
      %3 = "tensor.empty"(%2) : (index) -> tensor<?xf32>
      "dummy.some_use"(%3) : (tensor<?xf32>) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["tensor.empty"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.tensor.make_loop_independent"(%0) <{num_loops = 1 : i64}> : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

