"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],bf16>, !torch.vtensor<[],bf16>) -> !torch.vtensor<[],bf16>, sym_name = "torch.aten.sub.Scalar$mixed_type"}> ({
  ^bb0(%arg0: !torch.vtensor<[],bf16>, %arg1: !torch.vtensor<[],bf16>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.sub.Scalar"(%arg0, %0, %0) : (!torch.vtensor<[],bf16>, !torch.int, !torch.int) -> !torch.vtensor<[],bf16>
    "func.return"(%1) : (!torch.vtensor<[],bf16>) -> ()
  }) : () -> ()
}) : () -> ()

