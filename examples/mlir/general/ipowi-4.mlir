"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "ipowi_index"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "math.ipowi"(%arg0, %arg1) : (index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

