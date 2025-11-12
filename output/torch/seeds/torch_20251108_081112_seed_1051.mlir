"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x3xf32, !torch_vtensor_1x3xf32) -> !torch_vtensor_1x3xf32, sym_name = "torch.aten.add.$broadcast"}> ({
  ^bb0(%arg0: !torch_vtensor_1x3xf32, %arg1: !torch_vtensor_1x3xf32):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_1x3xf32, !torch_vtensor_1x3xf32) -> !torch_vtensor_1x3xf32
    %1 = "func.return"(%0) : (!torch_vtensor_1x3xf32) -> ()
  }) : () -> ()
}) : () -> ()