"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> (i1, !stream.resource<constant>), sym_name = "resourceTryMap", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2:2 = "stream.resource.try_map"(%arg0, %0, %1) : (!util.buffer, index, index) -> (i1, !stream.resource<constant>)
    "util.return"(%2#0, %2#1) : (i1, !stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

