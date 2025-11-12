"builtin.module"() ({
  "util.func"() <{function_type = () -> (!stream.resource<variable>, !stream.resource<variable>, !stream.timepoint), sym_name = "resourceVariables", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 8 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1024 : index}> : () -> index
    %2:3 = "stream.resource.constants"(%1, %0) <{values = [dense<100> : tensor<256xi32>, dense<[101, 102]> : tensor<2xi32>]}> : (index, index) -> (!stream.resource<variable>, !stream.resource<variable>, !stream.timepoint)
    "util.return"(%2#0, %2#1, %2#2) : (!stream.resource<variable>, !stream.resource<variable>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

