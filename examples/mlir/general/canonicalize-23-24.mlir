"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "const_index_to_size_to_index"}> ({
    %0 = "arith.constant"() <{value = 123 : index}> : () -> index
    %1 = "shape.index_to_size"(%0) : (index) -> !shape.size
    %2 = "shape.size_to_index"(%1) : (!shape.size) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

