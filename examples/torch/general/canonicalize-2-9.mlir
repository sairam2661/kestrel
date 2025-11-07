"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4,1],si64>, sym_name = "torch.aten.slice.tensor$fold_dim_0_non_contiguous"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<[[28, 28], [14, 14], [7, 7], [4, 4]]> : tensor<4x2xsi64>}> : () -> !torch.vtensor<[4,2],si64>
    %3 = "torch.aten.slice.Tensor"(%2, %0, %0, %1, %0) : (!torch.vtensor<[4,2],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[4,1],si64>
    "func.return"(%3) : (!torch.vtensor<[4,1],si64>) -> ()
  }) : () -> ()
}) : () -> ()

