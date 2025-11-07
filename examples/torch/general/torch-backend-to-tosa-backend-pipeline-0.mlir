"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5],bf16>) -> !torch.vtensor<[5],bf16>, sym_name = "torch.aten.mul.Scalar$mixed_type"}> ({
  ^bb0(%arg0: !torch.vtensor<[5],bf16>):
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.aten.mul.Scalar"(%arg0, %0) : (!torch.vtensor<[5],bf16>, !torch.float) -> !torch.vtensor<[5],bf16>
    "func.return"(%1) : (!torch.vtensor<[5],bf16>) -> ()
  }) : () -> ()
}) : () -> ()

