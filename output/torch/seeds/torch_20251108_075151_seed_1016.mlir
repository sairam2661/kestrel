"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list_int) -> !torch_vtensor, sym_name = "complex_view_and_shape_as_tensor"}> ({
    ^bb0(%arg0: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %4 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()