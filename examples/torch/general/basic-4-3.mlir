"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[],si64>, sym_name = "torch.prim.NumToTensor.Scalar$basic"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch.int) -> !torch.vtensor<[],si64>
    "func.return"(%1) : (!torch.vtensor<[],si64>) -> ()
  }) : () -> ()
}) : () -> ()

