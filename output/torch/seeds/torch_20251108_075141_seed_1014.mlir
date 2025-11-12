"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchnone, !torchnone, !torchnone) -> (!torchnone, !torchnone, !torchnone), sym_name = "complex_sequence"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchnone, %arg2: !torchnone, %arg3: !torchnone):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %4 = "torch.constant.str"() <{value = "example"}> : () -> !torchstr
      %5 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlist
      %6 = "torch.aten.view"(%arg0, %5) : (!torchvtensor, !torchlist) -> !torchvtensor
      %7 = "torch.aten.add.Tensor"(%arg0, %6) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %8 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchint) -> !torchvtensor
      %9 = "torch.aten.cat"(%8, %7) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %10 = "torch.aten._shape_as_tensor"(%9) : (!torchvtensor) -> !torchvtensor
      %11 = "torch.aten.size.int"(%10, %0) : (!torchvtensor, !torchint) -> !torchint
      %12 = "torch.aten.index_select"(%9, %0, %11) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
      %13 = "torch.aten.eq.Tensor"(%arg0, %12) : (!torchvtensor, !torchvtensor) -> !torchint
      %14 = "torch.aten.item"(%13) : (!torchint) -> !torchint
      %15 = "torch.constant.none"() : () -> !torchnone
      %16 = "torch.constant.none"() : () -> !torchnone
      %17 = "torch.constant.none"() : () -> !torchnone
      "func.return"(%15, %16, %17) : (!torchnone, !torchnone, !torchnone) -> ()
  }) : () -> ()
}) : () -> ()