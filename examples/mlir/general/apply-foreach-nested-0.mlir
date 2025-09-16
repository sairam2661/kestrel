"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bar", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "foo"}> ({
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%2, %3, %4) ({
    ^bb0(%arg1: index):
      "scf.for"(%2, %3, %4) ({
      ^bb0(%arg2: index):
        "func.call"() <{callee = @bar}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["scf.for"]}> : (!transform.any_op) -> !transform.op<"scf.for">
      %1 = "transform.test_reverse_payload_ops"(%0) : (!transform.op<"scf.for">) -> !transform.op<"scf.for">
      "transform.test_consume_operand_each"(%1) : (!transform.op<"scf.for">) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

