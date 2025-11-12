"builtin.module"() ({
  "func.func"() <{function_type = (!torchv16tensor, !torchv16tensor) -> !torchv16tensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torchv16tensor, %arg1: !torchv16tensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      %1 = "torch.aten.mul.Tensor"(%0, %0) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      %2 = "torch.aten.sub.Tensor"(%1, %arg1) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      %3 = "torch.aten.div.Tensor"(%2, %arg0) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      %4 = "torch.aten.pow.Tensor"(%3, %0) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      "func.return"(%4) : (!torchv16tensor) -> ()
  }) : () -> ()
}) : () -> ()