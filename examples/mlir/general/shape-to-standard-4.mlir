"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> (), sym_name = "rank"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.rank"(%arg0) : (!shape.shape) -> !shape.size
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

