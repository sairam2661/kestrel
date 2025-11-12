"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "tensor_transforms"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %list0 = "torch.prim.ListConstruct"(%size0, %size1) : (!torch_int, !torch_int) -> !torch_list
      %view0 = "torch.aten.view"(%arg0, %list0) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %size2 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %size3 = "torch.aten.size.int"(%arg1, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %list1 = "torch.prim.ListConstruct"(%size2, %size3) : (!torch_int, !torch_int) -> !torch_list
      %view1 = "torch.aten.view"(%arg1, %list1) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %concat0 = "torch.aten.cat"(%view0, %c1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %concat1 = "torch.aten.cat"(%view1, %c1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%concat0, %concat1) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()