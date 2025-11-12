"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> !stream.resource<transient>, sym_name = "resourceSubview", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "arith.constant"() <{value = 256 : index}> : () -> index
    %2 = "stream.resource.subview"(%arg0, %arg1, %0, %1) : (!stream.resource<transient>, index, index, index) -> !stream.resource<transient>
    "util.return"(%2) : (!stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

