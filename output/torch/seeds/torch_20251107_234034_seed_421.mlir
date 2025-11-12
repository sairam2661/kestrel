"builtin.module"() ({
  "func.func"() <{function_type = (!torchv17tensor, !torchv17tensor) -> !torchv17tensor, sym_name = "torch.aten.add$complex"}> ({
  ^bb0(%arg0: !torchv17tensor, %arg1: !torchv17tensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv17tensor, !torchv17tensor) -> !torchv17tensor
    %1 = "torch.aten.neg.Tensor"(%0) : (!torchv17tensor) -> !torchv17tensor
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv17tensor, !torchv17tensor) -> !torchv17tensor
    %3 = "torch.aten.mul.Tensor"(%2, %1) : (!torchv17tensor, !torchv17tensor) -> !torchv17tensor
    "func.return"(%3) : (!torchv17tensor) -> ()
  }) : () -> ()
}) : () -> ()