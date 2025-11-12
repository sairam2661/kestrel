"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[128,2],f32>) -> !torch.vtensor<[128],complex<f32>>, sym_name = "view_as_complex"}> ({
  ^bb0(%arg0: !torch.vtensor<[128,2],f32>):
    %0 = "torch.aten.view_as_complex"(%arg0) : (!torch.vtensor<[128,2],f32>) -> !torch.vtensor<[128],complex<f32>>
    "func.return"(%0) : (!torch.vtensor<[128],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

