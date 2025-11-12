"builtin.module"() ({
  "util.func"() <{function_type = (index) -> (index, index), sym_name = "muli_divisibility", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 16 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %3 = "arith.remui"(%2, %0) : (index, index) -> index
    %4 = "arith.remui"(%2, %1) : (index, index) -> index
    "util.return"(%3, %4) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

