"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "ceildivui_index"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.ceildivui"(%arg0, %arg1) : (index, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

