"builtin.module"() ({
  "func.func"() <{function_type = () -> !shape.shape, sym_name = "f"}> ({
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 11 : index}> : () -> index
    %3 = "shape.from_extents"(%0, %1, %2) : (index, index, index) -> !shape.shape
    "func.return"(%3) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

