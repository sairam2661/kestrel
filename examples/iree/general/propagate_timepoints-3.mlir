"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>, !stream.resource<transient>) -> (!stream.resource<external>, !stream.resource<transient>), sym_name = "funcResults", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: !stream.resource<transient>):
    "util.return"(%arg0, %arg1) : (!stream.resource<external>, !stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

