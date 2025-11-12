"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_12_4_7_xf32, !torch_vtensor_2_4_3_3_xf32) -> !torch_vtensor_12_4_9_9_xf32, sym_name = "custom_convolution"}> ({
    ^bb0(%arg0: !torch_vtensor_12_4_7_xf32, %arg1: !torch_vtensor_2_4_3_3_xf32):
      %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_vtensor_4_xi1
      %1 = "torch.constant.none"() : () -> !torch_vtensor_0_xi1
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor_0_xi1
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_0_xi1
      %4 = "torch.prim.ListConstruct"(%2, %2, %2, %2) : (!torch_vtensor_0_xi1, !torch_vtensor_0_xi1, !torch_vtensor_0_xi1, !torch_vtensor_0_xi1) -> !torch_list_int
      %5 = "torch.prim.ListConstruct"(%3, %3, %3, %3) : (!torch_vtensor_0_xi1, !torch_vtensor_0_xi1, !torch_vtensor_0_xi1, !torch_vtensor_0_xi1) -> !torch_list_int
      %6 = "torch.aten.convolution"(%arg0, %arg1, %1, %5, %4, %5, %0, %4, %3) : (!torch_vtensor_12_4_7_xf32, !torch_vtensor_2_4_3_3_xf32, !torch_vtensor_0_xi1, !torch_list_int, !torch_list_int, !torch_list_int, !torch_vtensor_4_xi1, !torch_list_int, !torch_vtensor_0_xi1) -> !torch_vtensor_12_4_9_9_xf32
      "func.return"(%6) : (!torch_vtensor_12_4_9_9_xf32) -> ()
  }) : () -> ()
}) : () -> ()