"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (), sym_name = "utilAlign", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "util.align"(%arg0, %arg1) : (index, index) -> index
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

