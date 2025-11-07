"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "aten_log$fold_splat_f32"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<3.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %1 = "torch.aten.log"(%0) : (!torch.vtensor<[4],f32>) -> !torch.vtensor<[4],f32>
    "func.return"(%1) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

