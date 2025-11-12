"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstant_float, !torchconstant_float) -> !torchvtenso, sym_name = "unusual_combination"}> ({
  ^bb0(%arg0: !torchconstant_float, %arg1: !torchconstant_float):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchconstant_float, !torchconstant_float) -> !torchlistfloat
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %2 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torchfloat
    %3 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %4 = "torch.constant.none"() : () -> !torchnone
    %5 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchfloat) -> !torchvtensor
    %6 = "torch.vtensor.literal"() <{value = dense<5.000000e+00> : tensor<2xf32>}> : () -> !torchvtenso
    %7 = "torch.aten.add.Tensor"(%5, %6) : (!torchvtensor, !torchvtenso) -> !torchvtenso
    %8 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchconstant_float, !torchconstant_float) -> !torchbool
    %9 = "torch.aten.index_select"(%7, %4, %0) : (!torchvtenso, !torchstr, !torchconstant_float) -> !torchvtenso
    "func.return"(%9) : (!torchvtenso) -> ()
  }) : () -> ()
}) : () -> ()