"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_64x64xi32, !torch_vtensor_64x64xi32) -> !torch_vtensor_64x64xi32, sym_name = "torch.aten.add.Tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_64x64xi32, %arg1: !torch_vtensor_64x64xi32):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_64x64xi32, !torch_vtensor_64x64xi32) -> !torch_vtensor_64x64xi32
    "func.return"(%0) : (!torch_vtensor_64x64xi32) -> ()
  }) : () -> ()
}) : () -> ()