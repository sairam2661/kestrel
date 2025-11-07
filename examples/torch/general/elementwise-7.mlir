"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[6,1],bf16>, !torch.vtensor<[1],bf16>) -> !torch.vtensor<[6,1],bf16>, sym_name = "elementwise_add_non_broadcast_unit_dims"}> ({
  ^bb0(%arg0: !torch.vtensor<[6,1],bf16>, %arg1: !torch.vtensor<[1],bf16>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[6,1],bf16>, !torch.vtensor<[1],bf16>, !torch.int) -> !torch.vtensor<[6,1],bf16>
    "func.return"(%1) : (!torch.vtensor<[6,1],bf16>) -> ()
  }) : () -> ()
}) : () -> ()

