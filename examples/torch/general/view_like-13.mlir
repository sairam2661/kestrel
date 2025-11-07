"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,1,2,1,2],f32>) -> !torch.vtensor<[2,2,2],f32>, sym_name = "torch.aten.squeeze$static"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,1,2,1,2],f32>):
    %0 = "torch.aten.squeeze"(%arg0) : (!torch.vtensor<[2,1,2,1,2],f32>) -> !torch.vtensor<[2,2,2],f32>
    "func.return"(%0) : (!torch.vtensor<[2,2,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

