"builtin.module"() ({
  "func.func"() <{function_type = (!torchiva_tensor, !torchiva_tensor) -> !torchiva_tensor, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torchiva_tensor, %arg1: !torchiva_tensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchiva_tensor, !torchiva_tensor) -> !torchiva_tensor
      "func.return"(%0) : (!torchiva_tensor) -> ()
  }) : () -> ()
}) : () -> ()