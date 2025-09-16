"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> i1, sym_name = "is_broadcastable_on_same_shape"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.is_broadcastable"(%arg0, %arg0, %arg0) : (!shape.shape, !shape.shape, !shape.shape) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

