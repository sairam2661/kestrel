"builtin.module"() ({
  "util.func"() <{function_type = (i32) -> i32, sym_name = "recursive_fn", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    %0 = "util.call"(%arg0) <{callee = @recursive_fn, tied_operands = [-1 : index]}> : (i32) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

