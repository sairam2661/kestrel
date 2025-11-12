"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_26, !torch_vtensor_27) -> !torch_vtensor_26, sym_name = "torch_complex_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_26, %arg1: !torch_vtensor_27):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_26, !torch_vtensor_27) -> !torch_vtensor_26
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor_26) -> !torch_vtensor_25
      %2 = "torch.aten.size.int"(%1, %c0) : (!torch_vtensor_25, !torch_int) -> !torch_int
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_vtensor_28
      %4 = "torch.aten.eq.Tensor"(%3, %c1) : (!torch_vtensor_28, !torch_vtensor_28) -> !torch_vtensor_29
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%0, %c2, %c3, %c4) : (!torch_vtensor_26, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_30
      "func.return"(%5) : (!torch_vtensor_30) -> ()
  }) : () -> ()
}) : () -> ()