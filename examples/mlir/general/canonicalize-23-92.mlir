"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "fold_index_cast_on_index"}> ({
  ^bb0(%arg0: index):
    %0 = "shape.size_to_index"(%arg0) : (index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

