"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_where_false_scalar_fp"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<false> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.constant.float"() <{value = 7.000000e+00 : f64}> : () -> !torch.float
    %2 = "torch.constant.float"() <{value = 1.100000e+01 : f64}> : () -> !torch.float
    %3 = "torch.aten.where.Scalar"(%0, %1, %2) : (!torch.vtensor<[4],i1>, !torch.float, !torch.float) -> !torch.vtensor<[4],f32>
    "func.return"(%3) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

