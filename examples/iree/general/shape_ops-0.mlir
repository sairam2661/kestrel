"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x?xf32>) -> index, sym_name = "tensorDim", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x?xf32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<4x?xf32>, index) -> index
    "util.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

