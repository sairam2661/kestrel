"builtin.module"() ({
  "func.func"() <{function_type = (!torchnone, !torchnone, !torchnone) -> !torchnone, sym_name = "torch.fuzz.test"}> ({
  ^bb0(%arg0: !torchnone, %arg1: !torchnone, %arg2: !torchnone):
    %0 = "torch.constant.none"() : () -> !torchnone
    %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %3 = "torch.constant.str"() <{value = "hello"}> : () -> !torchstr
    %4 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchint) -> !torchvtensor
    %5 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchint) -> !torchvtensor
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torchvtensor, !torchvtensor) -> !torchlist
    %7 = "torch.aten.slice.Tensor"(%6, %2, %2, %1, %2) : (!torchlist, !torchint, !torchint, !torchint, !torchint) -> !torchvtensor
    %8 = "torch.aten.view"(%7, %1, %1) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
    %9 = "torch.aten.cat"(%8, %1) : (!torchvtensor, !torchint) -> !torchvtensor
    %10 = "torch.aten.eq.Tensor"(%9, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %11 = "torch.aten.index_select"(%10, %1, %4) : (!torchvtensor, !torchint, !torchvtensor) -> !torchvtensor
    %12 = "torch.aten.add.Tensor"(%11, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%12) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()