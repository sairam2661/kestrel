"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "nonuniform_constant_arg_callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: index):
    %3 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "util.return"(%3) : (index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index) -> (index, index), sym_name = "nonuniform_arg_caller", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "util.call"(%arg0) <{callee = @nonuniform_constant_arg_callee, tied_operands = [-1 : index]}> : (index) -> index
    %2 = "util.call"(%0) <{callee = @nonuniform_constant_arg_callee, tied_operands = [-1 : index]}> : (index) -> index
    "util.return"(%1, %2) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

