"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchlist, !torchint, !torchint, !torchint) -> !torchvtensor, sym_name = "custom_op_sequence"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchlist, %arg2: !torchint, %arg3: !torchint, %arg4: !torchint):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
    %1 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %2 = "torch.aten.index_select"(%arg0, %arg2, %arg4) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
    %3 = "torch.aten.slice.Tensor"(%2, %arg3, %arg4, %arg4) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
    %4 = "torch.aten.view"(%3, %arg1) : (!torchvtensor, !torchlist) -> !torchvtensor
    %5 = "torch.aten.add.Tensor"(%4, %arg0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()