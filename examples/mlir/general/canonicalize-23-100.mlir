"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> !shape.shape, sym_name = "broadcast_on_same_shape"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.broadcast"(%arg0, %arg0, %arg0) : (!shape.shape, !shape.shape, !shape.shape) -> !shape.shape
    "func.return"(%0) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

