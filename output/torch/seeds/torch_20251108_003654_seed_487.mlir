"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_10_64_112_112_112_f32, !torch_vtensor_10_64_56_56_56_f32) -> !torch_vtensor_10_64_28_28_28_f32, sym_name = "custom_max_pool3d"}> ({
  ^bb0(%arg0: !torch_vtensor_10_64_112_112_112_f32, %arg1: !torch_vtensor_10_64_56_56_56_f32):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %3 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %8:2 = "torch.aten.max_pool3d_with_indices"(%arg0, %2, %3, %4, %4, %0) : (!torch_vtensor_10_64_112_112_112_f32, !torch_list_int, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool) -> (!torch_vtensor_10_64_56_56_56_f32, !torch_vtensor_10_64_56_56_56_si64)
    %9:2 = "torch.aten.max_pool3d_with_indices"(%arg1, %2, %3, %4, %4, %0) : (!torch_vtensor_10_64_56_56_56_f32, !torch_list_int, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool) -> (!torch_vtensor_10_64_28_28_28_f32, !torch_vtensor_10_64_28_28_28_si64)
    "func.return"(%9#0) : (!torch_vtensor_10_64_28_28_28_f32) -> ()
  }) : () -> ()
}) : () -> ()