"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.int, sym_name = "torch.aten.IntImplicit$canonicalize_numtotensor_0d"}> ({
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch.int) -> !torch.vtensor<[],si64>
    %4 = "torch.aten.IntImplicit"(%3) : (!torch.vtensor<[],si64>) -> !torch.int
    "func.return"(%4) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.int, sym_name = "torch.aten.IntImplicit$canonicalize_literal_0d"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %1 = "torch.aten.IntImplicit"(%0) : (!torch.vtensor<[],si64>) -> !torch.int
    "func.return"(%1) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

