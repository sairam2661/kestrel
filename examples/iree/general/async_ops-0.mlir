"builtin.module"() ({
  "util.func"() <{function_type = (index) -> !stream.resource<transient>, sym_name = "asyncAlloca", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "stream.async.alloca"(%arg0) : (index) -> !stream.resource<transient>
    "util.return"(%0) : (!stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

