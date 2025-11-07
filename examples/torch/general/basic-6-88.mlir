"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>, sym_name = "torch.aten.remainder.Tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,4],f32>, %arg1: !torch.vtensor<[2,4],f32>):
    %0 = "torch.aten.remainder.Tensor"(%arg0, %arg1) : (!torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>
    "func.return"(%0) : (!torch.vtensor<[2,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

