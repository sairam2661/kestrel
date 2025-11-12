"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "uniform_arg_callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %5 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "util.return"(%5) : (index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> (index, index), sym_name = "uniform_arg_caller_a", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "util.call"(%2) <{callee = @uniform_arg_callee, tied_operands = [-1 : index]}> : (index) -> index
    %4 = "util.call"(%2) <{callee = @uniform_arg_callee, tied_operands = [-1 : index]}> : (index) -> index
    "util.return"(%3, %4) : (index, index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> index, sym_name = "uniform_arg_caller_b", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "util.call"(%0) <{callee = @uniform_arg_callee, tied_operands = [-1 : index]}> : (index) -> index
    "util.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

