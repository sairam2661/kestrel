"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantint) -> (!torchconstantbool, !torchconstantint), sym_name = "unusual_combinations"}> ({
  ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantint):
    %0 = "torch.constant.float"() <{value = 2.71828 : f64}> : () -> !torchfloat
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1, %0) : (!torchconstantbool, !torchconstantint, !torchfloat) -> !torchlist
    %2 = "torch.aten.size.int"(%1) : (!torchlist) -> !torchint
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torchint, !torchint) -> !torchconstantbool
    %5 = "torch.constant.none"() : () -> !torchnone
    %6 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchconstantint) -> !torchvtensor
    %7 = "torch.aten.index_select"(%6, %3, %1) : (!torchvtensor, !torchint, !torchlist) -> !torchvtensor
    %8 = "torch.aten.view"(%7, %1) : (!torchvtensor, !torchlist) -> !torchvtensor
    "func.return"(%4, %8) : (!torchconstantbool, !torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()