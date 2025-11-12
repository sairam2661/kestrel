"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_ops"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_vtensor
      %c4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_vtensor
      %list1 = "torch.prim.ListConstruct"(%c0, %c1, %c2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %list2 = "torch.prim.ListConstruct"(%c3, %c4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %slice1 = "torch.aten.slice.Tensor"(%arg0, %c0, %c1, %c2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %view1 = "torch.aten.view"(%slice1, %list1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add1 = "torch.aten.add.Tensor"(%view1, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %slice2 = "torch.aten.slice.Tensor"(%add1, %c0, %c2, %c3) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %view2 = "torch.aten.view"(%slice2, %list2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%view2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()