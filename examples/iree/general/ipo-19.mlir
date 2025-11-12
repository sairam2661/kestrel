"builtin.module"() ({
  "util.func"() <{function_type = (index) -> (index, index), sym_name = "passthrough_preserve_arg_callee", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg1: index):
    %1 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "util.return"(%arg1, %1) : (index, index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index) -> (index, index), sym_name = "passthrough_preserve_arg_caller", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0:2 = "util.call"(%arg0) <{callee = @passthrough_preserve_arg_callee, tied_operands = [-1 : index, -1 : index]}> : (index) -> (index, index)
    "util.return"(%0#0, %0#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

