"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch.aten.add.Tensor$index_select"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %4 = "torch.aten.index_select"(%arg0, %0, %1) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
      %5 = "torch.aten.add.Tensor"(%4, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()