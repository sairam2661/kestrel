"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[],si64>, sym_name = "torch.aten.rsub.Scalar$canonicalize_numtotensor_0d"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch.int) -> !torch.vtensor<[],si64>
    %4 = "torch.aten.rsub.Scalar"(%3, %1, %2) : (!torch.vtensor<[],si64>, !torch.int, !torch.int) -> !torch.vtensor<[],si64>
    "func.return"(%4) : (!torch.vtensor<[],si64>) -> ()
  }) : () -> ()
}) : () -> ()

