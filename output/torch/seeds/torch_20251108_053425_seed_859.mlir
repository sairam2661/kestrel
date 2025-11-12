"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x3x3xf32, !torch_vtensor_3x3x3xf32) -> !torch_vtensor_1x3x3xf32, sym_name = "torch_conv3d"}> ({
  ^bb0(%arg0: !torch_vtensor_1x3x3xf32, %arg1: !torch_vtensor_3x3x3xf32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.aten.conv3d"(%arg0, %arg1, %4, %0, %1, %2, %3) : (!torch_vtensor_1x3x3xf32, !torch_vtensor_3x3x3xf32, !torch_none, !torch_int, !torch_int, !torch_int, !torch_none) -> !torch_vtensor_1x3x3xf32
    "func.return"(%5) : (!torch_vtensor_1x3x3xf32) -> ()
  }) : () -> ()
}) : () -> ()