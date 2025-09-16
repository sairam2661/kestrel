"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4x?xf32>) -> (), sym_name = "rank"}> ({
  ^bb0(%arg0: tensor<4x4x?xf32>):
    %0 = "tensor.rank"(%arg0) : (tensor<4x4x?xf32>) -> index
    %1 = "tensor.rank"(%arg0) : (tensor<4x4x?xf32>) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

