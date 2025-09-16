"builtin.module"() ({
  "func.func"() <{function_type = (!shape.size, !shape.size) -> (), sym_name = "binary_ops_on_size"}> ({
  ^bb0(%arg0: !shape.size, %arg1: !shape.size):
    %0 = "shape.add"(%arg0, %arg1) : (!shape.size, !shape.size) -> !shape.size
    %1 = "shape.mul"(%arg0, %arg1) : (!shape.size, !shape.size) -> !shape.size
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

