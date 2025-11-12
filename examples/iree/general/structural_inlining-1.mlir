"builtin.module"() ({
  "util.func"() <{function_type = (i32) -> i32, sym_name = "caller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: i32):
    %0 = "util.call"(%arg1) <{callee = @callee, tied_operands = [-1 : index]}> : (i32) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (i32) -> i32, sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    "util.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

