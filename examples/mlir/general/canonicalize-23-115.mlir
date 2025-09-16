"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> !shape.shape, sym_name = "max_same_arg"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.max"(%arg0, %arg0) : (!shape.shape, !shape.shape) -> !shape.shape
    "func.return"(%0) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

