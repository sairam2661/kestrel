"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_of_size_0x3x2xf32, !torch_vtensor_of_size_0x3x2xf32) -> !torch_vtensor_of_size_0x3x2xf32, sym_name = "torch.aten.add.Tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_of_size_0x3x2xf32, %arg1: !torch_vtensor_of_size_0x3x2xf32):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_of_size_0x3x2xf32, !torch_vtensor_of_size_0x3x2xf32) -> !torch_vtensor_of_size_0x3x2xf32
    %1 = "torch.constant.float"() <{value = 1.5 : f64}> : () -> !torch_vtensor_of_size_0x3x2xf32
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor_of_size_0x3x2xf32, !torch_vtensor_of_size_0x3x2xf32) -> !torch_vtensor_of_size_0x3x2xf32
    "func.return"(%2) : (!torch_vtensor_of_size_0x3x2xf32) -> ()
  }) : () -> ()
}) : () -> ()