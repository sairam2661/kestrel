"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5],f32>, !torch.vtensor<[5],bf16>) -> !torch.vtensor<[5],f32>, sym_name = "torch.aten.add.Tensor$mixed_type_int"}> ({
  ^bb0(%arg0: !torch.vtensor<[5],f32>, %arg1: !torch.vtensor<[5],bf16>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[5],f32>, !torch.vtensor<[5],bf16>, !torch.int) -> !torch.vtensor<[5],f32>
    "func.return"(%1) : (!torch.vtensor<[5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

