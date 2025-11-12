"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32_2x2x3, !torch_vtensor_i32_2x2x3) -> !torch_vtensor_i32_4x4x6, sym_name = "dynamic_view_concat"}> ({
  ^bb0(%arg0: !torch_vtensor_i32_2x2x3, %arg1: !torch_vtensor_i32_2x2x3):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.aten._shape_as_tensor"(%arg0, %0) : (!torch_vtensor_i32_2x2x3, !torch_int) -> !torch_vtensor_i32_1
    %2 = "torch.aten._shape_as_tensor"(%arg1, %0) : (!torch_vtensor_i32_2x2x3, !torch_int) -> !torch_vtensor_i32_1
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_vtensor_i32_1, !torch_vtensor_i32_1) -> !torch_list_i64
    %4 = "torch.aten.cat"(%3, %0) : (!torch_list_i64, !torch_int) -> !torch_vtensor_i32_4
    %5 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %6 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_int, !torch_int) -> !torch_list_i64
    %8 = "torch.aten.view"(%arg0, %7) : (!torch_vtensor_i32_2x2x3, !torch_list_i64) -> !torch_vtensor_i32_4x6
    %9 = "torch.aten.view"(%arg1, %7) : (!torch_vtensor_i32_2x2x3, !torch_list_i64) -> !torch_vtensor_i32_4x6
    %10 = "torch.prim.ListConstruct"(%8, %9) : (!torch_vtensor_i32_4x6, !torch_vtensor_i32_4x6) -> !torch_list_i64
    %11 = "torch.aten.cat"(%10, %0) : (!torch_list_i64, !torch_int) -> !torch_vtensor_i32_4x4x6
    "func.return"(%11) : (!torch_vtensor_i32_4x4x6) -> ()
  }) : () -> ()
}) : () -> ()