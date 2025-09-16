"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape, !shape.shape) -> (), sym_name = "broadcast"}> ({
  ^bb0(%arg0: !shape.shape, %arg1: !shape.shape):
    %0 = "shape.broadcast"(%arg0, %arg1) : (!shape.shape, !shape.shape) -> !shape.shape
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

