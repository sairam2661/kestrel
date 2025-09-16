"builtin.module"() ({
  "func.func"() <{function_type = (index) -> tensor<1x12xf32>, sym_name = "fold_empty_tensor_with_cast"}> ({
  ^bb0(%arg0: index):
    %0 = "tensor.empty"(%arg0) : (index) -> tensor<?x12xf32>
    %1 = "tensor.cast"(%0) : (tensor<?x12xf32>) -> tensor<1x12xf32>
    "func.return"(%1) : (tensor<1x12xf32>) -> ()
  }) : () -> ()
}) : () -> ()

