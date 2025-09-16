"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> (), sym_name = "f"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.cstr_broadcastable"(%arg0, %arg0) : (!shape.shape, !shape.shape) -> !shape.witness
    "consume.witness"(%0) : (!shape.witness) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

