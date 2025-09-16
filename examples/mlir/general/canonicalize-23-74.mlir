"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "index_to_size_to_index"}> ({
  ^bb0(%arg0: index):
    %0 = "shape.index_to_size"(%arg0) : (index) -> !shape.size
    %1 = "shape.size_to_index"(%0) : (!shape.size) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

