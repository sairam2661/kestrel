"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index) -> index, sym_name = "foldAddAlignment", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "util.align"(%arg0, %arg2) : (index, index) -> index
    %1 = "util.align"(%arg1, %arg2) : (index, index) -> index
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %3 = "util.align"(%2, %arg2) : (index, index) -> index
    "util.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

