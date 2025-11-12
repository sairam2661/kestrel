"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "double_index"}> ({
  ^bb0(%arg2: index):
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.muli"(%arg2, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> index, sym_name = "no_matching_func_op"}> ({
  ^bb0(%arg1: index):
    "func.return"(%arg1) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> index, sym_name = "index_times_four"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

