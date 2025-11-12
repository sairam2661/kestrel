"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector, !torchvvector) -> !torchvvector, sym_name = "torch.aten.add.Tensor$basic"}> ({
  ^bb0(%arg0: !torchvvector, %arg1: !torchvvector):
    %0 = "torch.constant.none"() : () -> !torchnone
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvvector, !torchvvector) -> !torchvvector
    "func.return"(%1) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()