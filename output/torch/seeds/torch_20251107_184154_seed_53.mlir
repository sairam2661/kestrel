"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_complexity_test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %const0 = "torch.constant.int"() <{value = 0}> : () -> !torch_int
      %const1 = "torch.constant.int"() <{value = 2}> : () -> !torch_int
      %const2 = "torch.constant.int"() <{value = 3}> : () -> !torch_int
      %const3 = "torch.constant.none"() : () -> !torch_none
      %shape = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %slice0 = "torch.aten.slice.Tensor"(%shape, %const0, %const1, %const2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %list = "torch.prim.ListConstruct"(%slice0) : (!torch_vtensor) -> !torch_list
      %view = "torch.aten.view"(%arg1, %slice0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add = "torch.aten.add.Tensor"(%arg0, %view) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %eq = "torch.aten.eq.Tensor"(%add, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%eq) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()