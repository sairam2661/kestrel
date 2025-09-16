"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape, !shape.shape) -> (), sym_name = "f"}> ({
  ^bb0(%arg0: !shape.shape, %arg1: !shape.shape):
    %0 = "shape.cstr_eq"(%arg0, %arg1) : (!shape.shape, !shape.shape) -> !shape.witness
    "consume.witness"(%0) : (!shape.witness) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

