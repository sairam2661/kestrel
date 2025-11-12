"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index) -> (), sym_name = "rangeExtents", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0:2 = "util.range.extents"(%arg0, %arg2) : (index, index) -> (index, index)
    %1:2 = "util.range.extents"(%arg0, %arg1, %arg2, %arg2) : (index, index, index, index) -> (index, index)
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

