"builtin.module"() ({
  "func.func"() <{function_type = () -> (index, index), sym_name = "empty_tensor_static_dim"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 6 : index}> : () -> index
    %3 = "tensor.empty"(%2) : (index) -> tensor<4x5x?xf32>
    %4 = "tensor.dim"(%3, %1) : (tensor<4x5x?xf32>, index) -> index
    %5 = "tensor.dim"(%3, %0) : (tensor<4x5x?xf32>, index) -> index
    "func.return"(%4, %5) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

