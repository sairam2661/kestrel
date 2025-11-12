"builtin.module"() ({
  "util.func"() <{function_type = (tensor<0xi32>) -> tensor<0xi32>, sym_name = "tieShapeStaticZeroElements", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<0xi32>):
    %0 = "flow.tensor.tie_shape"(%arg0) : (tensor<0xi32>) -> tensor<0xi32>
    "util.return"(%0) : (tensor<0xi32>) -> ()
  }) : () -> ()
}) : () -> ()

