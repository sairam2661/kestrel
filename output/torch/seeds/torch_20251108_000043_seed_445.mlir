"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_manipulation"}> ({
    ^entry(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %size0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %size1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %cst0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
      %slice0 = "torch.aten.slice.Tensor"(%arg0, %cst0, %cst0, %size0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %slice1 = "torch.aten.slice.Tensor"(%arg1, %cst0, %cst0, %size1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add = "torch.aten.add.Tensor"(%slice0, %slice1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%add) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()