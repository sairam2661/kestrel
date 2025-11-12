"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteraltensor_0xf32_0x1, !torch_vtensorliteraltensor_0xf32_0x1, !torch_vtensorliteraltensor_0xf32_0x1) -> !torch_vtensorliteraltensor_0xf32_0x1, sym_name = "complex_torch_mix"}> ({
  %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
  %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
  %x = "torch.vtensor.literal"() <{value = dense<0.1> : tensor<1xf32>}> : () -> !torch_vtensorliteraltensor_0xf32_0x1
  %y = "torch.vtensor.literal"() <{value = dense<0.2> : tensor<1xf32>}> : () -> !torch_vtensorliteraltensor_0xf32_0x1
  %z = "torch.vtensor.literal"() <{value = dense<0.3> : tensor<1xf32>}> : () -> !torch_vtensorliteraltensor_0xf32_0x1
  %add1 = "torch.aten.add.Tensor"(%x, %y) : (!torch_vtensorliteraltensor_0xf32_0x1, !torch_vtensorliteraltensor_0xf32_0x1) -> !torch_vtensorliteraltensor_0xf32_0x1
  %add2 = "torch.aten.add.Tensor"(%add1, %z) : (!torch_vtensorliteraltensor_0xf32_0x1, !torch_vtensorliteraltensor_0xf32_0x1) -> !torch_vtensorliteraltensor_0xf32_0x1
  %shape = "torch.aten._shape_as_tensor"(%add2) : (!torch_vtensorliteraltensor_0xf32_0x1) -> !torch_vtensorliteraltensor_0xindex_0x1
  %size = "torch.aten.size.int"(%add2, %c0) : (!torch_vtensorliteraltensor_0xf32_0x1, !torch_int) -> !torch_int
  %quantized = "torch.aten._make_per_tensor_quantized_tensor"(%add2, %c1, %c0) : (!torch_vtensorliteraltensor_0xf32_0x1, !torch_int, !torch_int) -> !torch_vtensorliteraltensor_0xf32_0x1
  "func.return"(%quantized) : (!torch_vtensorliteraltensor_0xf32_0x1) -> ()
  }) : () -> ()
}) : () -> ()