"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "interleave_tensors"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.constant.none"() : () -> !torchnone
    %2 = "torch.aten.view"(%arg0, %0) : (!torchvtensor, !torchint) -> !torchvtensor
    %3 = "torch.aten.view"(%arg1, %0) : (!torchvtensor, !torchint) -> !torchvtensor
    %4 = "torch.aten.cat"(%2, %3, %0) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
    "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()