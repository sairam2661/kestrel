"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4d_f32, !torch_vtensor_2d_f32) -> !torch_vtensor_4d_f32, sym_name = "conv_with_bias"}> ({
    ^bb0(%arg0: !torch_vtensor_4d_f32, %arg1: !torch_vtensor_2d_f32, %arg2: !torch_vtensor_1d_f32):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.prim.ListConstruct"(%2, %0) : (!torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.prim.ListConstruct"() : () -> !torch_list_int
      %7 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %8 = "torch.aten.conv2d"(%arg0, %arg1, %arg2, %3, %4, %5, %7, %6, %2) : (!torch_vtensor_4d_f32, !torch_vtensor_2d_f32, !torch_vtensor_1d_f32, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool, !torch_list_int, !torch_int) -> !torch_vtensor_4d_f32
      "func.return"(%8) : (!torch_vtensor_4d_f32) -> ()
  }) : () -> ()
}) : () -> ()