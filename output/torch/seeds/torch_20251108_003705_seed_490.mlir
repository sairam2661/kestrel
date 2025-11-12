"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.sin"(%0) : (!torchvtensor) -> !torchvtensor
      %2 = "torch.aten.mul"(%1, %0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %3 = "torch.aten.mean"(%2) : (!torchvtensor) -> !torchvtensor
      %4 = "torch.aten.pow"(%3, %3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()