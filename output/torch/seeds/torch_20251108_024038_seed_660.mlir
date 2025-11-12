"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> (!torch_vtensor_3, !torch_vtensor_4), sym_name = "torch_fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_1) -> !torch_vtensor_5
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor_6
      %2 = "torch.aten.slice.Tensor"(%arg0, %1, %1, %0) : (!torch_vtensor_1, !torch_vtensor_6, !torch_vtensor_6, !torch_vtensor_5) -> !torch_vtensor_7
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_8
      %4 = "torch.aten.index_select"(%arg1, %3, %2) : (!torch_vtensor_2, !torch_vtensor_8, !torch_vtensor_7) -> !torch_vtensor_9
      %5 = "torch.aten.view"(%arg0, %0) : (!torch_vtensor_1, !torch_vtensor_5) -> !torch_vtensor_10
      %6 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_11
      %7 = "torch.aten.eq.Tensor"(%5, %4) : (!torch_vtensor_10, !torch_vtensor_9) -> !torch_vtensor_12
      %8 = "torch.prim.ListConstruct"(%7, %6) : (!torch_vtensor_12, !torch_vtensor_11) -> !torch_vtensor_13
      %9 = "torch.aten._shape_as_tensor"(%8) : (!torch_vtensor_13) -> !torch_vtensor_14
      %10 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor_15
      %11 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_16
      "func.return"(%9, %11) : (!torch_vtensor_14, !torch_vtensor_16) -> ()
  }) : () -> ()
}) : () -> ()