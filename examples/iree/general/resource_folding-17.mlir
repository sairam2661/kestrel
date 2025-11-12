"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> (!stream.resource<transient>, index), sym_name = "unrealizedCastCleanup", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index):
    %0 = "builtin.unrealized_conversion_cast"(%arg0, %arg1) : (!stream.resource<transient>, index) -> !stream.resource<transient>
    %1 = "stream.resource.size"(%0) : (!stream.resource<transient>) -> index
    "util.return"(%0, %1) : (!stream.resource<transient>, index) -> ()
  }) : () -> ()
}) : () -> ()

