"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "loop_outline_op"}> ({
  ^bb0(%arg1: index, %arg2: index, %arg3: index):
    "scf.for"(%arg1, %arg2, %arg3) ({
    ^bb0(%arg5: index):
      "scf.for"(%arg1, %arg2, %arg3) ({
      ^bb0(%arg6: index):
        %4 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "scf.for"(%arg1, %arg2, %arg3) ({
    ^bb0(%arg4: index):
      %3 = "arith.addi"(%arg4, %arg4) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_parent_op"(%0) <{nth_parent = 1 : i64, op_name = "scf.for"}> : (!transform.any_op) -> !transform.op<"scf.for">
      %2:2 = "transform.loop.outline"(%1) <{func_name = "foo"}> : (!transform.op<"scf.for">) -> (!transform.any_op, !transform.any_op)
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

