"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor14, !torch_int, !torch_int) -> !torch_vtensor14, sym_name = "torch.view_tensor"}> ({
    ^bb0(%arg0: !torch_vtensor14, %arg1: !torch_int, %arg2: !torch_int):
      %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor14) -> !torch_vtensor14
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %2 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_int) -> !torch_vtensor14
      %3 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_int) -> !torch_vtensor14
      %4 = "torch.prim.ListConstruct"(%0, %2, %3) : (!torch_vtensor14, !torch_vtensor14, !torch_vtensor14) -> !torch_list14
      %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor14, !torch_list14) -> !torch_vtensor14
      "func.return"(%5) : (!torch_vtensor14) -> ()
  }) : () -> ()
}) : () -> ()