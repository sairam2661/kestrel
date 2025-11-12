"builtin.module"() ({
  "func.func"() <{function_type = (!torchnone, !torchint, !torchvtensor) -> !torchvtensor, sym_name = "torch_aten_index_select_stress"}> ({
    ^bb0(%arg0: !torchnone, %arg1: !torchint, %arg2: !torchvtensor):
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %4 = "torch.aten.size.int"(%arg2) : (!torchvtensor) -> !torchint
      %5 = "torch.aten.slice.Tensor"(%arg2, %3, %3, %4, %3) : (!torchvtensor, !torchint, !torchint, !torchint, !torchint) -> !torchvtensor
      %6 = "torch.aten.index_select"(%arg2, %3, %5) : (!torchvtensor, !torchint, !torchvtensor) -> !torchvtensor
      "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()