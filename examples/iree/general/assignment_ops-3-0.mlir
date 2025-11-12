"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "switch_index"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "arith.constant"() <{value = 300 : index}> : () -> index
    %3 = "util.switch"(%arg0, %2, %0, %1) : (index, index, index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

