"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x4x4x32, !torch_list_int, !torch_vtensor_32, !torch_vtensor_32, !torch_float) -> (!torch_vtensor_1x4x4x32, !torch_vtensor_1x4x4x1, !torch_vtensor_1x4x4x1), sym_name = "custom_layer_norm"}> ({
  ^bb0(%arg0: !torch_vtensor_1x4x4x32, %arg1: !torch_list_int, %arg2: !torch_vtensor_32, %arg3: !torch_vtensor_32, %arg4: !torch_float):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_1x4x4x32) -> !torch_vtensor_4
    %1 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor_1x4x4x32, i32) -> i32
    %2 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch_vtensor_1x4x4x32, !torch_vtensor_1x4x4x32) -> !torch_vtensor_1x4x4x32
    %3 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor_1x4x4x32, !torch_vtensor_1x4x4x32) -> !torch_vtensor_1x4x4x32
    %4:3 = "torch.aten.native_layer_norm"(%arg0, %arg1, %arg2, %arg3, %arg4) : (!torch_vtensor_1x4x4x32, !torch_list_int, !torch_vtensor_32, !torch_vtensor_32, !torch_float) -> (!torch_vtensor_1x4x4x32, !torch_vtensor_1x4x4x1, !torch_vtensor_1x4x4x1)
    "func.return"(%4#0, %4#1, %4#2) : (!torch_vtensor_1x4x4x32, !torch_vtensor_1x4x4x1, !torch_vtensor_1x4x4x1) -> ()
  }) : () -> ()
}) : () -> ()