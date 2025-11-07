"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,3],f32>, !torch.vtensor<[3,3],f32>) -> !torch.vtensor<[2,3],f32>, sym_name = "torch.aten.mm$basic$static"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,3],f32>, %arg1: !torch.vtensor<[3,3],f32>):
    %0 = "torch.aten.mm"(%arg0, %arg1) : (!torch.vtensor<[2,3],f32>, !torch.vtensor<[3,3],f32>) -> !torch.vtensor<[2,3],f32>
    "func.return"(%0) : (!torch.vtensor<[2,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

