"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "empty_passthrough_callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: index):
    "util.return"(%arg1) : (index) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (index) -> index, sym_name = "empty_passthrough_caller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "util.call"(%arg0) <{callee = @empty_passthrough_callee, tied_operands = [-1 : index]}> : (index) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

