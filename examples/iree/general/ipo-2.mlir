"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index) -> index, sym_name = "dupe_arg_callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg3: index, %arg4: index, %arg5: index):
    %3 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %4 = "arith.addi"(%3, %arg5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "util.return"(%4) : (index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index, index) -> (index, index), sym_name = "dupe_arg_caller_a", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg1: index, %arg2: index):
    %1 = "util.call"(%arg1, %arg1, %arg1) <{callee = @dupe_arg_callee, tied_operands = [-1 : index]}> : (index, index, index) -> index
    %2 = "util.call"(%arg1, %arg2, %arg1) <{callee = @dupe_arg_callee, tied_operands = [-1 : index]}> : (index, index, index) -> index
    "util.return"(%1, %2) : (index, index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index) -> index, sym_name = "dupe_arg_caller_b", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "util.call"(%arg0, %arg0, %arg0) <{callee = @dupe_arg_callee, tied_operands = [-1 : index]}> : (index, index, index) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

