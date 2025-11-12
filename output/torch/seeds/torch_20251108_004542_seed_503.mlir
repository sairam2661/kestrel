"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint) -> !torchnone, sym_name = "complex_fuzz_test"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchint):
    %0 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %2 = "torch.constant.none"() : () -> !torchnone
    %3 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchvtensor, !torchint) -> !torchlist
    %4 = "torch.aten.add.tensor"(%arg0, %0) : (!torchvtensor, !torchfloat) -> !torchvtensor
    "func.return"(%2) : (!torchnone) -> ()
  }) : () -> ()
}) : () -> ()