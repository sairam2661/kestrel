"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch_fuz_1"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torchvtensor, !torchint) -> !torchsize
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchbool
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
    %5 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
    "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()