"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "foldAddAlignmentConstant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 16 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "util.align"(%arg0, %2) : (index, index) -> index
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %5 = "util.align"(%4, %0) : (index, index) -> index
    "util.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()

