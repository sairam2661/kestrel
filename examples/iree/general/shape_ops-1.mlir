"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x?xf32>) -> index, sym_name = "tensorRank", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x?xf32>):
    %0 = "tensor.rank"(%arg0) : (tensor<4x?xf32>) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

