"builtin.module"() ({
  "util.func"() <{function_type = (tensor<0x?xi32>, index) -> tensor<0x?xi32>, sym_name = "tieShapeDynamicZeroElements", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<0x?xi32>, %arg1: index):
    %0 = "flow.tensor.tie_shape"(%arg0, %arg1) : (tensor<0x?xi32>, index) -> tensor<0x?xi32>
    "util.return"(%0) : (tensor<0x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

