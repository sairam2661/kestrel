"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "loop_unroll_and_jam_unsupported_dynamic_trip_count"}> ({
  ^bb0(%arg1: index):
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    "scf.for"(%2, %arg1, %3) ({
    ^bb0(%arg2: index):
      %4 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_parent_op"(%0) <{nth_parent = 1 : i64, op_name = "scf.for"}> : (!transform.any_op) -> !transform.op<"scf.for">
      "transform.loop.unroll_and_jam"(%1) <{factor = 2 : i64}> : (!transform.op<"scf.for">) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

