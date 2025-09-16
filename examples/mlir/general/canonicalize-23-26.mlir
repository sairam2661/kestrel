"builtin.module"() ({
  "func.func"() <{function_type = (index) -> !shape.size, sym_name = "nonfoldable_index_to_size"}> ({
  ^bb0(%arg0: index):
    %0 = "shape.index_to_size"(%arg0) : (index) -> !shape.size
    "func.return"(%0) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

