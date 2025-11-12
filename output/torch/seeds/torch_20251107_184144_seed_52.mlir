"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_f32_2x2, !torch_vtensor_f32_2x2) -> !torch_vtensor_f32_2x2, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_f32_2x2, %arg1: !torch_vtensor_f32_2x2):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_f32_2x2, !torch_vtensor_f32_2x2) -> !torch_vtensor_f32_2x2
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.constant.str"() <{value = "example"}>
      : () -> !torch_str
      %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_f32_2x2, !torch_vtensor_f32_2x2) -> !torch_vtensor_bool_2x2
      %5 = "torch.aten.view"(%4, %0) : (!torch_vtensor_bool_2x2, !torch_int) -> !torch_vtensor_bool_2x2
      %6 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_int
      "func.return"(%1) : (!torch_vtensor_f32_2x2) -> ()
  }) : () -> ()
}) : () -> ()