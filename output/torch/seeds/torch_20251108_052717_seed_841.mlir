"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_256x256xf32, !torch_vtensor_256x256xf32) -> !torch_vtensor_256x256xf32, sym_name = "torch.bilinear_interpolate$large_tensors"}> ({
  ^bb0(%arg0: !torch_vtensor_256x256xf32, %arg1: !torch_vtensor_256x256xf32):
    %0 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor_256x256xf32, !torch_list_int) -> !torch_vtensor_256x256xf32
    %4 = "torch.aten.view"(%arg1, %2) : (!torch_vtensor_256x256xf32, !torch_list_int) -> !torch_vtensor_256x256xf32
    %5 = "torch.aten.mul"(%3, %4) : (!torch_vtensor_256x256xf32, !torch_vtensor_256x256xf32) -> !torch_vtensor_256x256xf32
    "func.return"(%5) : (!torch_vtensor_256x256xf32) -> ()
  }) : () -> ()
}) : () -> ()