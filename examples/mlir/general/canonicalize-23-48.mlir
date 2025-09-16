"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape, !shape.shape, !shape.shape) -> (), sym_name = "f"}> ({
  ^bb0(%arg0: !shape.shape, %arg1: !shape.shape, %arg2: !shape.shape):
    %0 = "shape.cstr_broadcastable"(%arg0, %arg1) : (!shape.shape, !shape.shape) -> !shape.witness
    %1 = "shape.cstr_broadcastable"(%arg1, %arg2) : (!shape.shape, !shape.shape) -> !shape.witness
    %2 = "shape.assuming_all"(%0, %1) : (!shape.witness, !shape.witness) -> !shape.witness
    "consume.witness"(%2) : (!shape.witness) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

