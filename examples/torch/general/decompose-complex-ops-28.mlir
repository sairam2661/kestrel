"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,56,56,96],bf16>, !torch.list<int>, !torch.vtensor<[96],bf16>, !torch.vtensor<[96],bf16>, !torch.float) -> (!torch.vtensor<[1,56,56,96],bf16>, !torch.vtensor<[1,56,56,1],f32>, !torch.vtensor<[1,56,56,1],f32>), sym_name = "native_layer_norm_mixed_dtypes"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,56,56,96],bf16>, %arg1: !torch.list<int>, %arg2: !torch.vtensor<[96],bf16>, %arg3: !torch.vtensor<[96],bf16>, %arg4: !torch.float):
    %0:3 = "torch.aten.native_layer_norm"(%arg0, %arg1, %arg2, %arg3, %arg4) : (!torch.vtensor<[1,56,56,96],bf16>, !torch.list<int>, !torch.vtensor<[96],bf16>, !torch.vtensor<[96],bf16>, !torch.float) -> (!torch.vtensor<[1,56,56,96],bf16>, !torch.vtensor<[1,56,56,1],f32>, !torch.vtensor<[1,56,56,1],f32>)
    "func.return"(%0#0, %0#1, %0#2) : (!torch.vtensor<[1,56,56,96],bf16>, !torch.vtensor<[1,56,56,1],f32>, !torch.vtensor<[1,56,56,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

