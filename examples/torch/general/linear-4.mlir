"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[256,120],f32>, !torch.vtensor<[4,120,256],f32>) -> !torch.vtensor<[4,256,256],f32>, sym_name = "torch.aten.matmul$basic$static"}> ({
  ^bb0(%arg0: !torch.vtensor<[256,120],f32>, %arg1: !torch.vtensor<[4,120,256],f32>):
    %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torch.vtensor<[256,120],f32>, !torch.vtensor<[4,120,256],f32>) -> !torch.vtensor<[4,256,256],f32>
    "func.return"(%0) : (!torch.vtensor<[4,256,256],f32>) -> ()
  }) : () -> ()
}) : () -> ()

