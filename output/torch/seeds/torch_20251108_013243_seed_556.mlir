"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "torch.aten.cat$basic"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_list_type
      %2 = "torch.aten.cat"(%1, %0) : (!torch_list_type, !torch_int) -> !torch_vtensor_type
      "func.return"(%2) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()