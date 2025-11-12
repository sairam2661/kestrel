"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor_type, !torchvtensor_type) -> !torchvtensor_type, sym_name = "fuzz_torch_operations"}> ({
    ^bb0(%arg0: !torchvtensor_type, %arg1: !torchvtensor_type):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torchfloat
      %2 = "torch.vtensor.literal"() <{value = dense<1.0e+00> : tensor<2x2xf32>}> : () -> !torchvtensor_type
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor_type, !torchvtensor_type) -> !torchvtensor_type
      %4 = "torch.aten.mul.Tensor"(%3, %2) : (!torchvtensor_type, !torchvtensor_type) -> !torchvtensor_type
      %5 = "torch.aten.div.Tensor_mode"(%4, %2, "trunc") : (!torchvtensor_type, !torchvtensor_type, !torchstr) -> !torchvtensor_type
      "func.return"(%5) : (!torchvtensor_type) -> ()
  }) : () -> ()
}) : () -> ()

#definetorchvtensor_type = !torchvtensor_type
#definetorchint = !torchint
#definetorchfloat = !torchfloat
#definetorchstr = !torchstr

#aliasdeftorchvtensor_type = tensor<2x2xf32>
#aliasdeftorchint = i64
#aliasdeftorchfloat = f32
#aliasdeftorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstrainttorchstr = !torchstr

#conceptconstrainttorchvtensor_type = tensor<2x2xf32>
#conceptconstrainttorchint = i64
#conceptconstrainttorchfloat = f32
#conceptconstraint