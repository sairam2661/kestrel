"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> index, sym_name = "main"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.index_cast"(%arg0) : (i8) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

