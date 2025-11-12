"builtin.module"() ({
  "util.func"() <{function_type = () -> (index, index, index), sym_name = "foldConstantAlign", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 7 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    %3 = "arith.constant"() <{value = 9 : index}> : () -> index
    %4 = "arith.constant"() <{value = 64 : index}> : () -> index
    %5 = "util.align"(%0, %4) : (index, index) -> index
    %6 = "util.align"(%1, %2) : (index, index) -> index
    %7 = "util.align"(%3, %2) : (index, index) -> index
    "util.return"(%5, %6, %7) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

