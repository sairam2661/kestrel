"builtin.module"() ({
  "func.func"() <{function_type = (!torchnone, !torchint, !torchvtensor) -> !torchvtensor, sym_name = "torch.aten.slice_view"}> ({
    ^bb0(%arg0: !torchnone, %arg1: !torchint, %arg2: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlist
      %4 = "torch.aten.slice.Tensor"(%arg2, %0, %1, %2, %arg0) : (!torchvtensor, !torchint, !torchint, !torchint, !torchnone) -> !torchvtensor
      %5 = "torch.aten.view"(%4, %3) : (!torchvtensor, !torchlist) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()