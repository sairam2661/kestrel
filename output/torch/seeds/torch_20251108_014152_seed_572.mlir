"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_195x32xf32, !torch_vtensor_195x64xf32) -> !torch_vtensor_195x96xf32, sym_name = "torch.aten.cat_large_tensors"}> ({
  ^bb0(%arg0: !torch_vtensor_195x32xf32, %arg1: !torch_vtensor_195x64xf32):
    %0 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_vtensor_1x1xf32
    %1 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch_vtensor_195x32xf32, !torch_vtensor_1x1xf32) -> !torch_vtensor_195x32xf32
    %2 = "torch.constant.float"() <{value = -0.5 : f32}> : () -> !torch_vtensor_1x1xf32
    %3 = "torch.aten.add.Tensor"(%arg1, %2) : (!torch_vtensor_195x64xf32, !torch_vtensor_1x1xf32) -> !torch_vtensor_195x64xf32
    %4 = "torch.prim.ListConstruct"(%1, %3) : (!torch_vtensor_195x32xf32, !torch_vtensor_195x64xf32) -> !torch_list_vtensor
    %5 = "torch.aten.cat"(%4, %0) : (!torch_list_vtensor, !torch_vtensor_1x1xf32) -> !torch_vtensor_195x96xf32
    "func.return"(%5) : (!torch_vtensor_195x96xf32) -> ()
  }) : () -> ()
}) : () -> ()