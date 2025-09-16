"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape, !shape.shape) -> i1, sym_name = "is_broadcastable_on_duplicate_shapes"}> ({
  ^bb0(%arg0: !shape.shape, %arg1: !shape.shape):
    %0 = "shape.is_broadcastable"(%arg0, %arg1, %arg0, %arg0, %arg0, %arg1) : (!shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

