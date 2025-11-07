"builtin.module"() ({
  "func.func"() <{function_type = () -> (!torch.vtensor<[1,1],si64>, !torch.vtensor<[1,1],si64>), sym_name = "torch.aten.slice.tensor$fold_dim_1"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[[10, 20, 30, 40, 50, 60, 70, 80, 90, 100]]> : tensor<1x10xsi64>}> : () -> !torch.vtensor<[1,10],si64>
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %8 = "torch.aten.slice.Tensor"(%0, %7, %3, %4, %2) : (!torch.vtensor<[1,10],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,1],si64>
    %9 = "torch.aten.slice.Tensor"(%0, %7, %5, %6, %2) : (!torch.vtensor<[1,10],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,1],si64>
    "func.return"(%8, %9) : (!torch.vtensor<[1,1],si64>, !torch.vtensor<[1,1],si64>) -> ()
  }) : () -> ()
}) : () -> ()

