"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index, index) -> (index, index), sym_name = "rangeExtentsExpand2", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0:2 = "util.range.extents"(%arg0, %arg2, %arg1, %arg3) : (index, index, index, index) -> (index, index)
    "util.return"(%0#0, %0#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

