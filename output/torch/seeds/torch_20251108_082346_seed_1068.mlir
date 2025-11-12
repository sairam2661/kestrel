"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1024x64xf32, !torch_vtensor_512xi64, !torch_vtensor_256xi32) -> (!torch_vtensor_256x64xf32, !torch_vtensor_256xi64, !torch_vtensor_256xi32), sym_name = "torch_custom_operation"}> ({
  ^bb0(%arg0: !torch_vtensor_1024x64xf32, %arg1: !torch_vtensor_512xi64, %arg2: !torch_vtensor_256xi32):
    %0 = "torch.prim.NumToTensor.Scalar"() <{value = 1024 : i64}> : () -> !torch_vtensor_1xsi64
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %arg2) : (!torch_vtensor_1024x64xf32, !torch_vtensor_512xi64, !torch_vtensor_256xi32) -> !torch_vtensor_1024x64xf32
    %2 = "torch.aten.add.Tensor"(%1, %1) : (!torch_vtensor_1024x64xf32, !torch_vtensor_1024x64xf32) -> !torch_vtensor_1024x64xf32
    %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor_1024x64xf32) -> !torch_vtensor_2xsi64
    %4 = "torch.aten.size.int"(%2, %0) : (!torch_vtensor_1024x64xf32, !torch_vtensor_1xsi64) -> !torch_vtensor_1xi64
    %5 = "torch.aten.eq.Tensor"(%3, %4) : (!torch_vtensor_2xsi64, !torch_vtensor_1xi64) -> !torch_vtensor_2xi1
    %6 = "torch.aten.cat"(%5) : (!torch_vtensor_2xi1) -> !torch_vtensor_1xi1
    "func.return"(%2, %6, %4) : (!torch_vtensor_1024x64xf32, !torch_vtensor_1xi1, !torch_vtensor_1xi64) -> ()
  }) : () -> ()
}) : () -> ()