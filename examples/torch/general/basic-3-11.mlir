"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],f64>) -> !torch.float, sym_name = "torch.aten.Float.Tensor$zero_rank"}> ({
  ^bb0(%arg0: !torch.vtensor<[],f64>):
    %0 = "torch.aten.Float.Tensor"(%arg0) : (!torch.vtensor<[],f64>) -> !torch.float
    "func.return"(%0) : (!torch.float) -> ()
  }) : () -> ()
}) : () -> ()

