"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, index) -> index, sym_name = "dim"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: index):
    %0 = "tensor.dim"(%arg0, %arg1) : (tensor<*xf32>, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

