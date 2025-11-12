"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (index, index), sym_name = "unused_result_callee", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg6: index, %arg7: index):
    %3 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %4 = "arith.addi"(%3, %arg6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "util.return"(%3, %4) : (index, index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index, index) -> index, sym_name = "unused_result_caller_a", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg4: index, %arg5: index):
    %2:2 = "util.call"(%arg4, %arg5) <{callee = @unused_result_callee, tied_operands = [-1 : index, -1 : index]}> : (index, index) -> (index, index)
    "util.return"(%2#1) : (index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index, index) -> index, sym_name = "unused_result_caller_b", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg2: index, %arg3: index):
    %1:2 = "util.call"(%arg2, %arg3) <{callee = @unused_result_callee, tied_operands = [-1 : index, -1 : index]}> : (index, index) -> (index, index)
    "util.return"(%1#1) : (index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index, index) -> (), sym_name = "unused_result_caller_c", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0:2 = "util.call"(%arg0, %arg1) <{callee = @unused_result_callee, tied_operands = [-1 : index, -1 : index]}> : (index, index) -> (index, index)
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

