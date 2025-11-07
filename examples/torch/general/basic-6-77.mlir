"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,2,3],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.min$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,2,3],f32>):
    %0 = "torch.aten.min"(%arg0) : (!torch.vtensor<[3,2,3],f32>) -> !torch.vtensor<[1],f32>
    "func.return"(%0) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

