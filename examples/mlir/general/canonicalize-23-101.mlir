"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape, !shape.shape) -> !shape.shape, sym_name = "broadcast_on_duplicate_shapes"}> ({
  ^bb0(%arg0: !shape.shape, %arg1: !shape.shape):
    %0 = "shape.broadcast"(%arg0, %arg1, %arg0, %arg0, %arg0, %arg1) : (!shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape) -> !shape.shape
    "func.return"(%0) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

