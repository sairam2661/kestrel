"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch.aten.index_select$complex"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvtensor
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvtensor
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvtensor
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvlist
      %4 = "torch.aten.index_select"(%arg0, %1, %3) : (!torchvtensor, !torchvtensor, !torchvlist) -> !torchvtensor
      %5 = "torch.aten.add.Tensor"(%arg1, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()