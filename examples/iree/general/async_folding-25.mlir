"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<constant>, index) -> !stream.resource<external>, sym_name = "IntermediateTransferElision", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<constant>, %arg1: index):
    %0 = "stream.async.transfer"(%arg0, %arg1, %arg1) : (!stream.resource<constant>, index, index) -> !stream.resource<staging>
    %1 = "stream.async.transfer"(%0, %arg1, %arg1) : (!stream.resource<staging>, index, index) -> !stream.resource<external>
    "util.return"(%1) : (!stream.resource<external>) -> ()
  }) : () -> ()
}) : () -> ()

