"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.float, sym_name = "torch.aten.FloatImplicit$canonicalize_numtotensor_0d"}> ({
    %0 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch.float) -> !torch.vtensor<[],f64>
    %2 = "torch.aten.FloatImplicit"(%1) : (!torch.vtensor<[],f64>) -> !torch.float
    "func.return"(%2) : (!torch.float) -> ()
  }) : () -> ()
}) : () -> ()

