"builtin.module"() ({
  "util.func"() <{function_type = (tensor<1024xf32>, tensor<1024xf32>) -> tensor<f32>, sym_name = "dot", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<1024xf32>, %arg1: tensor<1024xf32>):
    %0 = "stablehlo.dot"(%arg0, %arg1) : (tensor<1024xf32>, tensor<1024xf32>) -> tensor<f32>
    "util.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

