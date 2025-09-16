"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> (), sym_name = "shape_of"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "shape.shape_of"(%arg0) : (tensor<*xf32>) -> !shape.shape
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

