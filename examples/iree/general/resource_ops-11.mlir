"builtin.module"() ({
  "util.func"() <{function_type = () -> (!stream.resource<constant>, !stream.resource<constant>, !stream.timepoint), sym_name = "resourceConstants", sym_visibility = "private", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2:3 = "stream.resource.constants"(%0, %1) <{values = [dense<100> : tensor<1xi32>, dense<[101, 102]> : tensor<2xi32>]}> : (index, index) -> (!stream.resource<constant>, !stream.resource<constant>, !stream.timepoint)
    "util.return"(%2#0, %2#1, %2#2) : (!stream.resource<constant>, !stream.resource<constant>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

