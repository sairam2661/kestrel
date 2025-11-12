"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (index, index), sym_name = "dupe_unused_arg_callee", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg1: index, %arg2: index):
    %1 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "util.return"(%1, %arg1) : (index, index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index) -> (index, index), sym_name = "dupe_unused_arg_caller", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0:2 = "util.call"(%arg0, %arg0) <{callee = @dupe_unused_arg_callee, tied_operands = [-1 : index, -1 : index]}> : (index, index) -> (index, index)
    "util.return"(%0#0, %0#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

