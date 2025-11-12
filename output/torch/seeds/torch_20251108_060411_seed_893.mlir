"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add$dynamic"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
    %3 = "torch.aten.add"(%arg0, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()