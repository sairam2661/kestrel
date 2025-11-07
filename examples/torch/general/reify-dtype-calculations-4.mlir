"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor, sym_name = "derefine_int_to_number"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.aten.arange"(%0, %1, %1, %1, %1) : (!torch.int, !torch.none, !torch.none, !torch.none, !torch.none) -> !torch.vtensor
    "func.return"(%2) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

