"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %list0 = "torch.prim.ListConstruct"(%c0, %c1, %c2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %shape0 = "torch._shape_as_tensor"(%size0) : (!torch_int) -> !torch_vtensor
      %shape1 = "torch._shape_as_tensor"(%size1) : (!torch_int) -> !torch_vtensor
      %cat0 = "torch.aten.cat"(%shape0, %shape1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %slice0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %size0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %add0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %view0 = "torch.aten.view"(%add0, %list0) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      "func.return"(%view0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()