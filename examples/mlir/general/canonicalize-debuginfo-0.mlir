"builtin.module"() ({
  "func.func"() <{function_type = () -> (index, index, index, index), sym_name = "merge_constants"}> ({
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "arith.constant"() <{value = 42 : index}> : () -> index
    %2 = "arith.constant"() <{value = 42 : index}> : () -> index
    %3 = "arith.constant"() <{value = 42 : index}> : () -> index
    "func.return"(%0, %1, %2, %3) : (index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

