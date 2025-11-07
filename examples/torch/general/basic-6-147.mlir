"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4],si64>) -> !torch.vtensor<[4],i1>, sym_name = "torch.aten.lt.Scalar$intfloat"}> ({
  ^bb0(%arg0: !torch.vtensor<[4],si64>):
    %0 = "torch.constant.float"() <{value = 1.100000e+00 : f64}> : () -> !torch.float
    %1 = "torch.aten.lt.Scalar"(%arg0, %0) : (!torch.vtensor<[4],si64>, !torch.float) -> !torch.vtensor<[4],i1>
    "func.return"(%1) : (!torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

