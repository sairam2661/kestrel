"builtin.module"() ({
  "func.func"() <{function_type = (index) -> !shape.shape, sym_name = "no_fold"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "shape.from_extents"(%0, %arg0) : (index, index) -> !shape.shape
    "func.return"(%1) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

