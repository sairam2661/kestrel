"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "empty_tensor_dynamic_dim2"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.empty"(%arg0, %arg1) : (index, index) -> tensor<?x?xf32>
    %3 = "tensor.dim"(%2, %0) : (tensor<?x?xf32>, index) -> index
    %4 = "tensor.dim"(%2, %1) : (tensor<?x?xf32>, index) -> index
    "func.return"(%3, %4) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

