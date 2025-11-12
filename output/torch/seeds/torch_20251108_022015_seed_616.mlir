"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_static_tensor_1d_4xsi32, !torch_vtensor_static_tensor_1d_4xsi32) -> !torch_vtensor_static_tensor_1d_8xsi32, sym_name = "torch_aten_cat_mixed_types"}> ({
    ^bb0(%arg0: !torch_vtensor_static_tensor_1d_4xsi32, %arg1: !torch_vtensor_static_tensor_1d_4xsi32):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.str"() <{value = "mixed types"}> : () -> !torch_str
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_static_tensor_1d_4xsi32, !torch_vtensor_static_tensor_1d_4xsi32) -> !torch_list_vtensor
      %4 = "torch.aten.cat"(%3, %0) : (!torch_list_vtensor, !torch_int) -> !torch_vtensor_static_tensor_1d_8xsi32
      "func.return"(%4) : (!torch_vtensor_static_tensor_1d_8xsi32) -> ()
  }) : () -> ()
}) : () -> ()