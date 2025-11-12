"builtin.module"() ({
  "func.func"() <{function_type = (!torchv1tensors, !torchv1tensors) -> !torchv1tensors, sym_name = "torch.aten.add$complex"}> ({
  ^bb0(%arg0: !torchv1tensors, %arg1: !torchv1tensors):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchv1tensors, !torchv1tensors) -> !torchv1tensors
    %1 = "torch.aten.add"(%0, %arg1) : (!torchv1tensors, !torchv1tensors) -> !torchv1tensors
    %2 = "torch.aten.add"(%1, %arg0) : (!torchv1tensors, !torchv1tensors) -> !torchv1tensors
    "func.return"(%2) : (!torchv1tensors) -> ()
  }) : () -> ()
}) : () -> ()