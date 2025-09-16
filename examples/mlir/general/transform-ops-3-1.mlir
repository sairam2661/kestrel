"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "loop_peel_op"}> ({
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 41 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    "scf.for"(%3, %4, %5) ({
    ^bb0(%arg1: index):
      %6 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_parent_op"(%0) <{nth_parent = 1 : i64, op_name = "scf.for"}> : (!transform.any_op) -> !transform.op<"scf.for">
      %2:2 = "transform.loop.peel"(%1) <{fail_if_already_divisible = false, peel_front = false}> : (!transform.op<"scf.for">) -> (!transform.op<"scf.for">, !transform.op<"scf.for">)
      "transform.debug.emit_remark_at"(%2#0) <{message = "main loop"}> : (!transform.op<"scf.for">) -> ()
      "transform.debug.emit_remark_at"(%2#1) <{message = "remainder loop"}> : (!transform.op<"scf.for">) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

