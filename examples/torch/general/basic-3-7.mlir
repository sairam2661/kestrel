"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],si64>) -> !torch.int, sym_name = "torch.aten.Int.Tensor$zero_rank"}> ({
  ^bb0(%arg0: !torch.vtensor<[],si64>):
    %0 = "torch.aten.Int.Tensor"(%arg0) : (!torch.vtensor<[],si64>) -> !torch.int
    "func.return"(%0) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

