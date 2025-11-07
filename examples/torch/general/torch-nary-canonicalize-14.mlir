"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_remainder_scalar_int"}> ({
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.vtensor.literal"() <{value = dense<3> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.aten.remainder.Scalar"(%1, %0) : (!torch.vtensor<[4],si64>, !torch.int) -> !torch.vtensor<[4],si64>
    "func.return"(%2) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

