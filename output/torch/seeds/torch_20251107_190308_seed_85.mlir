"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_16x16xf32, !torch_vtensor_16x16xf32) -> !torch_vtensor_16x16xf32, sym_name = "torch.aten.add$large_tensors"}> ({
  ^bb0(%arg0: !torch_vtensor_16x16xf32, %arg1: !torch_vtensor_16x16xf32):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_16x16xf32, !torch_vtensor_16x16xf32) -> !torch_vtensor_16x16xf32
    %1 = "torch.aten.mul"(%0, %0) : (!torch_vtensor_16x16xf32, !torch_vtensor_16x16xf32) -> !torch_vtensor_16x16xf32
    %2 = "torch.aten.sin"(%1) : (!torch_vtensor_16x16xf32) -> !torch_vtensor_16x16xf32
    "func.return"(%2) : (!torch_vtensor_16x16xf32) -> ()
  }) : () -> ()
}) : () -> ()