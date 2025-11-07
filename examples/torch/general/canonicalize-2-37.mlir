"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4],si64>) -> !torch.vtensor<[4],i1>, sym_name = "aten_eq_tensor_args"}> ({
  ^bb0(%arg0: !torch.vtensor<[4],si64>):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],i1>
    "func.return"(%0) : (!torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

