"builtin.module"() ({
  "util.func"() <{function_type = () -> (index, index), sym_name = "rangeMinConstant", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "util.range.min"(%0) : (index) -> index
    %5 = "util.range.min"(%3, %1, %2) : (index, index, index) -> index
    "util.return"(%4, %5) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

