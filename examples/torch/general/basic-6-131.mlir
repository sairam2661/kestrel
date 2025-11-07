"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3],f32>, !torch.vtensor<[4],f32>) -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.outer$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3],f32>, %arg1: !torch.vtensor<[4],f32>):
    %0 = "torch.aten.outer"(%arg0, %arg1) : (!torch.vtensor<[3],f32>, !torch.vtensor<[4],f32>) -> !torch.vtensor<[3,4],f32>
    "func.return"(%0) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

