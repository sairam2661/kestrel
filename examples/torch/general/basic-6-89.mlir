"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>, sym_name = "torch.aten.fmod.Tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,4],f32>, %arg1: !torch.vtensor<[2,4],f32>):
    %0 = "torch.aten.fmod.Tensor"(%arg0, %arg1) : (!torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>
    "func.return"(%0) : (!torch.vtensor<[2,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

