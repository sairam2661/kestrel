"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "binary_ops"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "shape.add"(%arg0, %arg1) : (index, index) -> index
    %1 = "shape.mul"(%arg0, %arg1) : (index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

