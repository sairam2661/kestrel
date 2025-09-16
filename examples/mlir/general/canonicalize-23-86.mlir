"builtin.module"() ({
  "func.func"() <{function_type = () -> !shape.size, sym_name = "fold_mul_mixed"}> ({
    %0 = "shape.const_size"() <{value = 2 : index}> : () -> !shape.size
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "shape.mul"(%0, %1) : (!shape.size, index) -> !shape.size
    "func.return"(%2) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

