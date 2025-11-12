"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> index, sym_name = "foldSameAlignment", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "util.align"(%arg0, %arg1) : (index, index) -> index
    %1 = "util.align"(%0, %arg1) : (index, index) -> index
    "util.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

