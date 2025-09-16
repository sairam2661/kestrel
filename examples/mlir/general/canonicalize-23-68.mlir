"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> !shape.size, sym_name = "dont_fold_rank"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.rank"(%arg0) : (!shape.shape) -> !shape.size
    "func.return"(%0) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

