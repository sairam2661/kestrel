"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,12,128,128],f32>, !torch.vtensor<[1],si32>) -> !torch.vtensor<[1,12,128,128],f32>, sym_name = "torch.aten.fill.Tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,12,128,128],f32>, %arg1: !torch.vtensor<[1],si32>):
    %0 = "torch.aten.fill.Tensor"(%arg0, %arg1) : (!torch.vtensor<[1,12,128,128],f32>, !torch.vtensor<[1],si32>) -> !torch.vtensor<[1,12,128,128],f32>
    "func.return"(%0) : (!torch.vtensor<[1,12,128,128],f32>) -> ()
  }) : () -> ()
}) : () -> ()

