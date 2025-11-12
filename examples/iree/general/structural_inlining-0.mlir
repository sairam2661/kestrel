"builtin.module"() ({
  "util.initializer"() <{function_type = () -> ()}> ({
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "util.call"(%0) <{callee = @from_initializer, tied_operands = [-1 : index]}> : (i32) -> i32
    %2 = "util.optimization_barrier"(%1) : (i32) -> i32
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (i32) -> i32, sym_name = "from_initializer", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    "util.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

