"builtin.module"() ({
  "func.func"() <{function_type = (i1, index, memref<?xf32>, i8) -> (), sym_name = "if_no_else"}> ({
  ^bb0(%arg1: i1, %arg2: index, %arg3: memref<?xf32>, %arg4: i8):
    "scf.if"(%arg1) ({
      "some_op"(%arg1, %arg3) : (i1, memref<?xf32>) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["scf.if"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%arg0) <{ops = ["some_op"]}> : (!transform.any_op) -> !transform.any_op
      "transform.scf.take_assumed_branch"(%0) : (!transform.any_op) -> ()
      "transform.print"(%1) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

