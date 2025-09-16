"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "fold_mul_index"}> ({
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "shape.mul"(%0, %1) : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

