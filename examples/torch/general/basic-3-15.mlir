"builtin.module"() ({
  "func.func"() <{function_type = (!torch.int) -> !torch.vtensor<[],si64>, sym_name = "torch.prim.NumToTensor.Scalar$basic"}> ({
  ^bb0(%arg0: !torch.int):
    %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch.int) -> !torch.vtensor<[],si64>
    "func.return"(%0) : (!torch.vtensor<[],si64>) -> ()
  }) : () -> ()
}) : () -> ()

