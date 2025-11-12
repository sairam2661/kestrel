"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (index, index), sym_name = "rangeExtentsFoldConstantsDynamic", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3:2 = "util.range.extents"(%0, %arg0, %1, %1, %arg1, %2) : (index, index, index, index, index, index) -> (index, index)
    "util.return"(%3#0, %3#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

