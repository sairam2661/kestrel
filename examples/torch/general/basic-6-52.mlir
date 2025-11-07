"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[5],si64>, sym_name = "torch.aten.arange.start_step"}> ({
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.aten.arange.start_step"(%1, %2, %3, %0, %0, %0, %0) : (!torch.int, !torch.int, !torch.int, !torch.none, !torch.none, !torch.none, !torch.none) -> !torch.vtensor<[5],si64>
    "func.return"(%4) : (!torch.vtensor<[5],si64>) -> ()
  }) : () -> ()
}) : () -> ()

