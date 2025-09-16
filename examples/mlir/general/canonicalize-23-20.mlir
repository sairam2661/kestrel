"builtin.module"() ({
  "func.func"() <{function_type = () -> !shape.shape, sym_name = "fold_const_size"}> ({
    %0 = "shape.const_size"() <{value = 3 : index}> : () -> !shape.size
    %1 = "shape.const_size"() <{value = 5 : index}> : () -> !shape.size
    %2 = "shape.from_extents"(%0, %1) : (!shape.size, !shape.size) -> !shape.shape
    "func.return"(%2) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

