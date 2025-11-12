"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor) -> (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor), sym_name = "aten_tensor_tensor_le_mixed"}> ({
    ^bb0(%arg0: !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor):
      %0 = "torch.constant.int"() <{value = 128 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 1.280000e+02 : f64}> : () -> !torch_float
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.constant.none"() <{value = none}> : () -> !torch_none
      %4 = "torch.vtensor.literal"() <{value = dense<[-127, 128, -127, 126]> : tensor<4xi8>}> : () -> !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor
      %5 = "torch.aten.le.Scalar"(%4, %0) : (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor, !torch_int) -> !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor
      %6 = "torch.aten.cat"(%5) <{axis = 0}> : (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor) -> !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor
      %7 = "torch.aten.slice.Tensor"(%6, %0, %0, %0) : (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor
      %8 = "torch.aten.add.Tensor"(%7, %7) : (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor, !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor) -> !torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor
      "func.return"(%8) : (!torch_vtensorliteral_tensortensor_i1tensor_i1tensor_i1tensor) -> ()
  }) : () -> ()
}) : () -> ()