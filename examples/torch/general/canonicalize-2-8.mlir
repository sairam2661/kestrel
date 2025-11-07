"builtin.module"() ({
  "func.func"() <{function_type = () -> (!torch.vtensor<[1,1],f32>, !torch.vtensor<[1,1],f32>), sym_name = "torch.aten.slice.tensor$fold_dim_0"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[[2.000000e+00], [4.000000e+00], [8.000000e+00], [1.600000e+01], [3.200000e+01], [6.400000e+01], [1.280000e+02], [2.560000e+02], [5.120000e+02], [1.024000e+03]]> : tensor<10x1xf32>}> : () -> !torch.vtensor<[10,1],f32>
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = -7 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %8 = "torch.aten.slice.Tensor"(%0, %7, %3, %4, %2) : (!torch.vtensor<[10,1],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,1],f32>
    %9 = "torch.aten.slice.Tensor"(%0, %7, %5, %6, %2) : (!torch.vtensor<[10,1],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,1],f32>
    "func.return"(%8, %9) : (!torch.vtensor<[1,1],f32>, !torch.vtensor<[1,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

