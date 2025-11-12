"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "foldMulAlignmentConstant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2048 : index}> : () -> index
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %3 = "util.align"(%2, %0) : (index, index) -> index
    "util.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

