"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape, !shape.shape) -> !shape.witness, sym_name = "cstr_broadcastable_on_duplicate_shapes"}> ({
  ^bb0(%arg0: !shape.shape, %arg1: !shape.shape):
    %0 = "shape.cstr_broadcastable"(%arg0, %arg1, %arg0, %arg0, %arg0, %arg1) : (!shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape) -> !shape.witness
    "func.return"(%0) : (!shape.witness) -> ()
  }) : () -> ()
}) : () -> ()

