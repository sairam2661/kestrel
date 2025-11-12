"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x64x1x100f32, !torch_vtensor_64x64x3x3f32, !torch_vtensor_64f32) -> !torch_vtensor_1x64x2x200f32, sym_name = "forward"}> ({
  ^bb0(%arg0: !torch_vtensor_1x64x1x100f32, %arg1: !torch_vtensor_64x64x3x3f32, %arg2: !torch_vtensor_64f32):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.prim.ListConstruct"(%2, %2) : (!torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %6 = "torch.aten.convolution"(%arg0, %arg1, %arg2, %3, %4, %5, %0, %4, %1) : (!torch_vtensor_1x64x1x100f32, !torch_vtensor_64x64x3x3f32, !torch_vtensor_64f32, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool, !torch_list_int, !torch_int) -> !torch_vtensor_1x64x2x200f32
    "func.return"(%6) : (!torch_vtensor_1x64x2x200f32) -> ()
  }) : () -> ()
}) : () -> ()