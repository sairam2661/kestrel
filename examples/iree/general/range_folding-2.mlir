"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (index, index), sym_name = "rangeMinSimplify", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "util.range.min"(%arg0, %0, %arg0, %arg1) : (index, index, index, index) -> index
    %5 = "util.range.min"(%3, %arg0, %1, %arg1, %2, %arg1) : (index, index, index, index, index, index) -> index
    "util.return"(%4, %5) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

