"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "test_promote_if_one_iteration"}> ({
  ^bb0(%arg1: index):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%1, %2, %2, %arg1) ({
    ^bb0(%arg2: index, %arg3: index):
      %4 = "test.foo"(%arg1) : (index) -> index
      "scf.yield"(%4) : (index) -> ()
    }) : (index, index, index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["scf.for"]}> : (!transform.any_op) -> !transform.any_op
      "transform.loop.promote_if_one_iteration"(%0) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

