"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "const_size"}> ({
    %0 = "shape.const_size"() <{value = 42 : index}> : () -> !shape.size
    %1 = "shape.size_to_index"(%0) : (!shape.size) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

