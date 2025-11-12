"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint) -> !torchbool, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchint):
    %0 = "torch.constant.none"() : () -> !torchnone
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %2 = "torch.prim.ListConstruct"(%arg1) : (!torchint) -> !torchlist
    %3 = "torch.aten.size.int"(%arg0, %arg1) : (!torchvtensor, !torchint) -> !torchint
    %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torchint) -> !torchvtensor
    %5 = "torch.aten.add.Tensor"(%arg0, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %6 = "torch.aten.eq.Tensor"(%5, %4) : (!torchvtensor, !torchvtensor) -> !torchbool
    %7 = "torch.aten._make_per_tensor_quantized_tensor"(%6, %3, %3, %3, %0) : (!torchbool, !torchint, !torchint, !torchint, !torchnone) -> !torchvtensor
    "func.return"(%7) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()