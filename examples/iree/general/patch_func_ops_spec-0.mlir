"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "double_index"}> ({
  ^bb0(%arg1: index):
    %2 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> index, sym_name = "index_times_four"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

