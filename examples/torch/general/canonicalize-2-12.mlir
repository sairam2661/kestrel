"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.number, sym_name = "torch.aten.ScalarImplicit$canonicalize_numtotensor_0d"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch.int) -> !torch.vtensor<[],si64>
    %2 = "torch.aten.ScalarImplicit"(%1) : (!torch.vtensor<[],si64>) -> !torch.number
    "func.return"(%2) : (!torch.number) -> ()
  }) : () -> ()
}) : () -> ()

