"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index) -> (), sym_name = "rangeMin", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "util.range.min"(%arg0) : (index) -> index
    %1 = "util.range.min"(%arg0, %arg1, %arg2) : (index, index, index) -> index
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

