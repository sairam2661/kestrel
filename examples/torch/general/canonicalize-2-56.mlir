"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "aten_log$fold_splat_si32"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<3> : tensor<4xsi32>}> : () -> !torch.vtensor<[4],si32>
    %1 = "torch.aten.log"(%0) : (!torch.vtensor<[4],si32>) -> !torch.vtensor<[4],f32>
    "func.return"(%1) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

