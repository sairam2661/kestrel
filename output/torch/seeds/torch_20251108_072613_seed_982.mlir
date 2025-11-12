"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_slice, !torch_vtensor_slice) -> !torch_vtensor_slice, sym_name = "torch_slice_mixed_types"}> ({
    ^bb0(%arg0: !torch_vtensor_slice, %arg1: !torch_vtensor_slice):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.slice.Tensor"(%arg0, %3) : (!torch_vtensor_slice, !torch_list_int) -> !torch_vtensor_slice
      %5 = "torch.aten.slice.Tensor"(%arg1, %3) : (!torch_vtensor_slice, !torch_list_int) -> !torch_vtensor_slice
      %6 = "torch.constant.str"() <{value = "slice_result"}> : () -> !torch_str
      %7 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %8 = "torch.prim.ListConstruct"(%6, %7) : (!torch_str, !torch_bool) -> !torch_list_any
      %9 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_slice) -> !torch_vtensor_slice
      %10 = "torch.aten.index_select"(%arg0, %9, %0) : (!torch_vtensor_slice, !torch_vtensor_slice, !torch_int) -> !torch_vtensor_slice
      "func.return"(%10) : (!torch_vtensor_slice) -> ()
    }) : () -> ()
}) : () -> ()