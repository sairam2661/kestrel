"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint) -> !torchvtensor, sym_name = "torch.aten.where.Tensor$complex"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchint):
    %0 = "torch.aten.where.Tensor"(%arg0, %arg1, %arg0) : (!torchvtensor, !torchint, !torchvtensor) -> !torchvtensor
    "func.return"(%0) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()