"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[2],si32>, sym_name = "torch.aten.slice.tensor$fold_small"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]> : tensor<10xsi32>}> : () -> !torch.vtensor<[10],si32>
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %5 = "torch.aten.slice.Tensor"(%0, %1, %2, %4, %3) : (!torch.vtensor<[10],si32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[2],si32>
    "func.return"(%5) : (!torch.vtensor<[2],si32>) -> ()
  }) : () -> ()
}) : () -> ()

