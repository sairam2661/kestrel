"builtin.module"() ({
  "func.func"() <{function_type = () -> !shape.size, sym_name = "const_index_to_size"}> ({
    %0 = "arith.constant"() <{value = 123 : index}> : () -> index
    %1 = "shape.index_to_size"(%0) : (index) -> !shape.size
    "func.return"(%1) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

