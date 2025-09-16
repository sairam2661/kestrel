"builtin.module"() ({
  "func.func"() <{function_type = (!shape.shape) -> !shape.size, sym_name = "not_const"}> ({
  ^bb0(%arg0: !shape.shape):
    %0 = "shape.const_size"() <{value = 3 : index}> : () -> !shape.size
    %1 = "shape.get_extent"(%arg0, %0) : (!shape.shape, !shape.size) -> !shape.size
    "func.return"(%1) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

