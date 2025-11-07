"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],f32>) -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.log10$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],f32>):
    %0 = "torch.aten.log10"(%arg0) : (!torch.vtensor<[3,4],f32>) -> !torch.vtensor<[3,4],f32>
    "func.return"(%0) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

