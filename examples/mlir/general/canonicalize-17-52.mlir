"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?xf32>) -> (index, index), sym_name = "fold_dim_of_tensor.cast"}> ({
  ^bb0(%arg0: tensor<4x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.cast"(%arg0) : (tensor<4x?xf32>) -> tensor<?x?xf32>
    %3 = "tensor.dim"(%2, %0) : (tensor<?x?xf32>, index) -> index
    %4 = "tensor.dim"(%2, %1) : (tensor<?x?xf32>, index) -> index
    "func.return"(%3, %4) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

