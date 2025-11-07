"builtin.module"() ({
  "func.func"() <{function_type = (!torch.int) -> !torch.int, sym_name = "torch.aten.sym_constrain_range_for_size"}> ({
  ^bb0(%arg0: !torch.int):
    %0 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.none"() : () -> !torch.none
    "torch.aten.sym_constrain_range_for_size"(%arg0, %2, %2) : (!torch.int, !torch.none, !torch.none) -> ()
    "torch.aten.sym_constrain_range_for_size"(%arg0, %1, %0) : (!torch.int, !torch.int, !torch.int) -> ()
    "func.return"(%arg0) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

