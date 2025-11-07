"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,3,1],si32>, !torch.vtensor<[1,3,1],f32>) -> !torch.vtensor<[1,3,1],f32>, sym_name = "torch.aten.maximum$mixed_type"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,3,1],si32>, %arg1: !torch.vtensor<[1,3,1],f32>):
    %0 = "torch.aten.maximum"(%arg0, %arg1) : (!torch.vtensor<[1,3,1],si32>, !torch.vtensor<[1,3,1],f32>) -> !torch.vtensor<[1,3,1],f32>
    "func.return"(%0) : (!torch.vtensor<[1,3,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

