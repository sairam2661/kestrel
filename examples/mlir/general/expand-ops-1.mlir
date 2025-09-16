"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "ceildivi_index"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.ceildivsi"(%arg0, %arg1) : (index, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

