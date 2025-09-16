"builtin.module"() ({
  "func.func"() <{function_type = (!shape.size) -> !shape.size, sym_name = "size_to_index_to_size"}> ({
  ^bb0(%arg0: !shape.size):
    %0 = "shape.size_to_index"(%arg0) : (!shape.size) -> index
    %1 = "shape.index_to_size"(%0) : (index) -> !shape.size
    "func.return"(%1) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

