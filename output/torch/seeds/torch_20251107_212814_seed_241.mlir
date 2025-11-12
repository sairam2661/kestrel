"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x128x256x256_f32, !torch_vtensor_1x128x256x256_f32) -> (!torch_vtensor_1x128x256x256_f32, !torch_vtensor_1x128x256x256_f32), sym_name = "torch.aten.add_and_slice"}> ({
  ^bb0(%arg0: !torch_vtensor_1x128x256x256_f32, %arg1: !torch_vtensor_1x128x256x256_f32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 128 : i64}> : () -> !torch_int
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_1x128x256x256_f32, !torch_vtensor_1x128x256x256_f32) -> !torch_vtensor_1x128x256x256_f32
    %5 = "torch.aten.slice.Tensor"(%4, %0, %1, %3) : (!torch_vtensor_1x128x256x256_f32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1x128x128x256_f32
    %6 = "torch.aten.slice.Tensor"(%4, %2, %1, %3) : (!torch_vtensor_1x128x256x256_f32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1x128x128x256_f32
    %7 = "torch.constant.none"() : () -> !torch_none
    %8 = "torch.prim.ListConstruct"(%0, %1, %3, %2) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
    %9 = "torch.aten.tensor"(%8, %7, %7, %7) : (!torch_list_int, !torch_none, !torch_none, !torch_none) -> !torch_vtensor_4xi64
    %10 = "torch.aten.eq.Tensor"(%5, %6) : (!torch_vtensor_1x128x128x256_f32, !torch_vtensor_1x128x128x256_f32) -> !torch_vtensor_1x128x128x256_i1
    %11 = "torch.aten.index_select"(%10, %0, %9) : (!torch_vtensor_1x128x128x256_i1, !torch_int, !torch_vtensor_4xi64) -> !torch_vtensor_4xi64
    %12 = "torch.aten.view"(%11, %0, %1, %3) : (!torch_vtensor_4xi64, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1x1x2x2
    "func.return"(%5, %6) : (!torch_vtensor_1x128x128x256_f32, !torch_vtensor_1x128x128x256_f32) -> ()
  }) : () -> ()
}) : () -> ()