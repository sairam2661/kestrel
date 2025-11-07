"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_sub_splat_int"}> ({
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.vtensor.literal"() <{value = dense<7> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<11> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %3 = "torch.aten.sub.Tensor"(%1, %2, %0) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>, !torch.int) -> !torch.vtensor<[4],si64>
    "func.return"(%3) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

