"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "aten_log$fold_splat_i1"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<true> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.aten.log"(%0) : (!torch.vtensor<[4],i1>) -> !torch.vtensor<[4],f32>
    "func.return"(%1) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

