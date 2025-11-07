"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,5],si32>, !torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3,4,5],f32>, sym_name = "torch.aten.pow.Tensor_Tensor$intfloat"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,5],si32>, %arg1: !torch.vtensor<[3,4,5],f32>):
    %0 = "torch.aten.pow.Tensor_Tensor"(%arg0, %arg1) : (!torch.vtensor<[3,4,5],si32>, !torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3,4,5],f32>
    "func.return"(%0) : (!torch.vtensor<[3,4,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

