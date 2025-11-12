"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_fusion"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %3 = "torch.aten.cat"(%arg2, %0) : (!torchvtensor, !torchint) -> !torchvtensor
      %4 = "torch.aten.slice.Tensor"(%3, %1, %0, %1) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
      %5 = "torch.aten.view"(%4, %0, %1) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
      %6 = "torch.aten.index_select"(%5, %1, %0) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
      "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()