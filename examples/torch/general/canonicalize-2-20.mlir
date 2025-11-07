"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[1],si64>, sym_name = "fold_prim_numtotensor_scalar"}> ({
    %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch.int
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch.int) -> !torch.vtensor<[1],si64>
    "func.return"(%1) : (!torch.vtensor<[1],si64>) -> ()
  }) : () -> ()
}) : () -> ()

