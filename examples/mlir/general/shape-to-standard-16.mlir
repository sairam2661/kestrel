"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3xf32>) -> (), sym_name = "shape_of_stat"}> ({
  ^bb0(%arg0: tensor<1x2x3xf32>):
    %0 = "shape.shape_of"(%arg0) : (tensor<1x2x3xf32>) -> !shape.shape
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

