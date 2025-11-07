"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[6],bf16>, !torch.vtensor<[6],f32>, !torch.float) -> !torch.vtensor<[6],bf16>, sym_name = "torch.aten.add.Tensor$mixed_type_fp"}> ({
  ^bb0(%arg0: !torch.vtensor<[6],bf16>, %arg1: !torch.vtensor<[6],f32>, %arg2: !torch.float):
    %0 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[6],bf16>, !torch.vtensor<[6],f32>, !torch.float) -> !torch.vtensor<[6],bf16>
    "func.return"(%1) : (!torch.vtensor<[6],bf16>) -> ()
  }) : () -> ()
}) : () -> ()

