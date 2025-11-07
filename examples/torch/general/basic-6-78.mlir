"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,2,3],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.max$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,2,3],f32>):
    %0 = "torch.aten.max"(%arg0) : (!torch.vtensor<[3,2,3],f32>) -> !torch.vtensor<[1],f32>
    "func.return"(%0) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

