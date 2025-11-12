"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t, sym_name = "torch_aten_index_select_combination"}> ({
    ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_vtensor_t):
      %index = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %list = "torch.prim.ListConstruct"(%index) : (!torch_int) -> !torch_list_t
      %size = "torch.aten.size.int"(%arg0, %index) : (!torch_vtensor_t, !torch_int) -> !torch_int
      %shape = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_t) -> !torch_vtensor_t
      %sliced = "torch.aten.slice.Tensor"(%arg0, %index, %index, %size) : (!torch_vtensor_t, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_t
      %item = "torch.aten.item"(%size) : (!torch_int) -> !torch_float
      "func.return"(%sliced) : (!torch_vtensor_t) -> ()
  }) : () -> ()
}) : () -> ()