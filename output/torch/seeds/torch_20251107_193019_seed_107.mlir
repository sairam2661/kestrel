"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "fuzz_random_tensors"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.constant.none"() : () -> !torchnone
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %4 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
    %5 = "torch.prim.NumToTensor.Scalar"(%4) : (!torchfloat) -> !torchvtensor
    %6 = "torch.aten.add.Tensor"(%arg0, %5) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %7 = "torch.aten.slice.Tensor"(%arg1, %1, %2, %3) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
    %8 = "torch.aten.cat"(%7, %6) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %9 = "torch.aten.view"(%8, %3) : (!torchvtensor, !torchint) -> !torchvtensor
    "func.return"(%9) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()