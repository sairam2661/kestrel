"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, index) -> index, sym_name = "dim"}> ({
  ^bb0(%arg0: tensor<2x3xf32>, %arg1: index):
    %0 = "shape.dim"(%arg0, %arg1) : (tensor<2x3xf32>, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

