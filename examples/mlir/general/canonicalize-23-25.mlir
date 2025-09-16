"builtin.module"() ({
  "func.func"() <{function_type = (!shape.size) -> index, sym_name = "nonfoldable_size_to_index"}> ({
  ^bb0(%arg0: !shape.size):
    %0 = "shape.size_to_index"(%arg0) : (!shape.size) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

