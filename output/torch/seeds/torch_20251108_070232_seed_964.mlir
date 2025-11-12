"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t4x5x6f32, !torch_list_tint) -> !torch_vtensor_t2x1x2x3xf32, sym_name = "torch.aten.view"}> ({
  ^bb0(%arg0: !torch_vtensor_t4x5x6f32, %arg1: !torch_list_tint):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %4 = "torch.prim.ListConstruct"(%arg1, %0, %3) : (!torch_list_tint, !torch_int, !torch_int) -> !torch_list_tint
    %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor_t4x5x6f32, !torch_list_tint) -> !torch_vtensor_t2x1x2x3xf32
    "func.return"(%5) : (!torch_vtensor_t2x1x2x3xf32) -> ()
  }) : () -> ()
}) : () -> ()