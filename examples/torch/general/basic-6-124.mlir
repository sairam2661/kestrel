"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,5],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> (!torch.vtensor<[3,5],f32>, !torch.vtensor<[3,5],f32>, !torch.vtensor<[3,5],f32>), sym_name = "torch.aten.clamp.Tensor$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,5],f32>, %arg1: !torch.vtensor<[1],f32>, %arg2: !torch.vtensor<[1],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.aten.clamp.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[3,5],f32>, !torch.vtensor<[1],f32>, !torch.none) -> !torch.vtensor<[3,5],f32>
    %2 = "torch.aten.clamp.Tensor"(%arg0, %0, %arg2) : (!torch.vtensor<[3,5],f32>, !torch.none, !torch.vtensor<[1],f32>) -> !torch.vtensor<[3,5],f32>
    %3 = "torch.aten.clamp.Tensor"(%arg0, %arg1, %arg2) : (!torch.vtensor<[3,5],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[3,5],f32>
    "func.return"(%1, %2, %3) : (!torch.vtensor<[3,5],f32>, !torch.vtensor<[3,5],f32>, !torch.vtensor<[3,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

