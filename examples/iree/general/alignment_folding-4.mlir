"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> index, sym_name = "foldAlignmentRecursively", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 16 : index}> : () -> index
    %1 = "util.align"(%arg0, %0) : (index, index) -> index
    %2 = "util.align"(%1, %arg1) : (index, index) -> index
    %3 = "util.align"(%2, %0) : (index, index) -> index
    "util.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

