"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "empty_tensor_dynamic_dim"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.empty"(%arg0) : (index) -> tensor<4x5x?xf32>
    %2 = "tensor.dim"(%1, %0) : (tensor<4x5x?xf32>, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

