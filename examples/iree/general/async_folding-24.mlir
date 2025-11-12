"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> !stream.resource<transient>, sym_name = "RedundantTransferElision", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index):
    %0 = "stream.async.transfer"(%arg0, %arg1, %arg1) : (!stream.resource<transient>, index, index) -> !stream.resource<transient>
    "util.return"(%0) : (!stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

