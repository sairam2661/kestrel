"builtin.module"() ({
  "func.func"() <{function_type = () -> !shape.size, sym_name = "fold_div_size"}> ({
    %0 = "shape.const_size"() <{value = 10 : index}> : () -> !shape.size
    %1 = "shape.const_size"() <{value = 3 : index}> : () -> !shape.size
    %2 = "shape.div"(%0, %1) : (!shape.size, !shape.size) -> !shape.size
    "func.return"(%2) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

