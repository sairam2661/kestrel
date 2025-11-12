"builtin.module"() ({
  "util.func"() <{function_type = (tensor<0x?xf32>, index) -> tensor<0x?xf32>, sym_name = "cloneDynamicZeroElements", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<0x?xf32>, %arg1: index):
    %0 = "flow.tensor.clone"(%arg0, %arg1) : (tensor<0x?xf32>, index) -> tensor<0x?xf32>
    "util.return"(%0) : (tensor<0x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

