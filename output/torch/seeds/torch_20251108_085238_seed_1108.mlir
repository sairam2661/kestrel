"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorTowards_11937918496244224577_17_tensor, !torch_vtensorTowards_11937918496244224577_17_tensor, !torch_vtensorTowards_11937918496244224577_17_tensor) -> (!torch_vtensorTowards_11937918496244224577_17_tensor), sym_name = "torch.aten.cat"}> ({
  ^bb0(%arg0: !torch_vtensorTowards_11937918496244224577_17_tensor, %arg1: !torch_vtensorTowards_11937918496244224577_17_tensor, %arg2: !torch_vtensorTowards_11937918496244224577_17_tensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torch_vtensorTowards_11937918496244224577_17_tensor, !torch_vtensorTowards_11937918496244224577_17_tensor, !torch_vtensorTowards_11937918496244224577_17_tensor) -> !torch_list
    %2 = "torch.aten.cat"(%1, %0) : (!torch_list, !torch_int) -> !torch_vtensorTowards_11937918496244224577_17_tensor
    "func.return"(%2) : (!torch_vtensorTowards_11937918496244224577_17_tensor) -> ()
  }) : () -> ()
}) : () -> ()