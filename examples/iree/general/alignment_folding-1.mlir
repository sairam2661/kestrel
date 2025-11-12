"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "foldGreaterAlignment", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 8 : index}> : () -> index
    %1 = "arith.constant"() <{value = 16 : index}> : () -> index
    %2 = "util.align"(%arg0, %1) : (index, index) -> index
    %3 = "util.align"(%2, %0) : (index, index) -> index
    "util.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

