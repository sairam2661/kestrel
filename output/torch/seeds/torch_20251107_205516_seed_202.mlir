"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor), sym_name = "tensor_complex_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3 = "torch.constant.none"() : () -> !torch_none
      %size = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %slice = "torch.aten.slice.Tensor"(%arg0, %c1, %c3, %c3, %size) : (!torch_vtensor, !torch_int, !torch_none, !torch_none, !torch_int) -> !torch_vtensor
      %list = "torch.prim.ListConstruct"(%arg1, %slice) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %item = "torch.aten.item"(%slice) : (!torch_vtensor) -> !torch_int
      %index_select = "torch.aten.index_select"(%arg0, %c1, %item) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%index_select) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()