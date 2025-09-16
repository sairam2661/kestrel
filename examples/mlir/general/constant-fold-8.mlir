"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "and_index"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 31 : index}> : () -> index
    %1 = "arith.constant"() <{value = -1 : index}> : () -> index
    %2 = "arith.andi"(%arg0, %0) : (index, index) -> index
    %3 = "arith.andi"(%2, %1) : (index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

