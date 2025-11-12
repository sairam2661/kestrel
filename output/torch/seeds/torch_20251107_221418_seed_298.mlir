"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "complex_slice_and_view"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %list0 = "torch.prim.ListConstruct"(%c0, %c1, %c2, %c3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
      %sliced0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %c3, %c1) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
      %list1 = "torch.prim.ListConstruct"(%c0, %c2, %c1, %c3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
      %sliced1 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %c3, %c1) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
      %viewed0 = "torch.aten.view"(%sliced0, %list0) : (!torch_vtensor_type, !torch_list_int) -> !torch_vtensor_type
      %viewed1 = "torch.aten.view"(%sliced1, %list1) : (!torch_vtensor_type, !torch_list_int) -> !torch_vtensor_type
      "func.return"(%viewed1) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()