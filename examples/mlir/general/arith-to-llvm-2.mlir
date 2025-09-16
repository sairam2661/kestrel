"builtin.module"() ({
  "func.func"() <{function_type = (index, i1) -> (), sym_name = "index_cast"}> ({
  ^bb0(%arg0: index, %arg1: i1):
    %0 = "arith.index_cast"(%arg0) : (index) -> i1
    %1 = "arith.index_cast"(%arg1) : (i1) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

