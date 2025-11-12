"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_ltensor, i32) -> !torch_vtensor_ltensor, sym_name = "torch_complex_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor_ltensor, %arg1: i32):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 5 : i32}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 2.5e+02 : f32}> : () -> !torch_float
      %3 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<2x2xf32>}> : () -> !torch_vtensor_ltensor
      %4 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_ltensor) -> i32
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %4, %1, %0, %2) : (!torch_vtensor_ltensor, i32, i32, !torch_bool, !torch_float) -> !torch_vtensor_ltensor
      %6 = "torch.aten.eq.Tensor"(%arg0, %3) : (!torch_vtensor_ltensor, !torch_vtensor_ltensor) -> !torch_bool
      %7 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_ltensor) -> !torch_vtensor_ltensor
      %8 = "torch.aten.add.Tensor"(%arg0, %3, %1) : (!torch_vtensor_ltensor, !torch_vtensor_ltensor, i32) -> !torch_vtensor_ltensor
      %9 = "torch.aten.cat"(%arg0, %3, %1) : (!torch_vtensor_ltensor, !torch_vtensor_ltensor, i32) -> !torch_vtensor_ltensor
      %10 = "torch.prim.NumToTensor.Scalar"(%arg1) : (i32) -> !torch_vtensor_ltensor
      "func.return"(%9) : (!torch_vtensor_ltensor) -> ()
  }) : () -> ()
}) : () -> ()