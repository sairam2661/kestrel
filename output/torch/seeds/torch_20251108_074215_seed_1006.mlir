"builtin.module"() ({
  "func.func"() <{
    function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor,
    sym_name = "combined_operations"
  }> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %2 = "torch.aten.sub.Tensor"(%0, %1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %3 = "torch.aten.div.Tensor"(%2, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %4 = "torch.aten.relu"(%3) : (!torchvtensor) -> !torchvtensor
      "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()