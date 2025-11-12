"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2xi32, !torch_vtensor_2xi32) -> (!torch_vtensor_2xi32, !torch_vtensor_2xi32), sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_2xi32, %arg1: !torch_vtensor_2xi32):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_2xi32, !torch_vtensor_2xi32) -> !torch_vtensor_2xi32
      %1 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_2xi32, !torch_vtensor_2xi32) -> !torch_vtensor_2xi1
      %2 = "torch.aten.size.int"(%arg0, 0) : (!torch_vtensor_2xi32, index) -> index
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_vtensor_1xi32
      %5 = "torch.aten.cat"(%arg0, %arg1, %4) : (!torch_vtensor_2xi32, !torch_vtensor_2xi32, !torch_vtensor_1xi32) -> !torch_vtensor_3xi32
      %6 = "torch.aten._shape_as_tensor"(%5) : (!torch_vtensor_3xi32) -> !torch_vtensor_1xi64
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %1, %0, %2, %3) : (!torch_vtensor_3xi32, !torch_vtensor_2xi1, !torch_vtensor_2xi32, index, !torch_int) -> !torch_vtensor_3xi32
      "func.return"(%7, %6) : (!torch_vtensor_3xi32, !torch_vtensor_1xi64) -> ()
  }) : () -> ()
}) : () -> ()