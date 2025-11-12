"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "torch_complex_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_deviceindex
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_deviceindex
      %2 = "torch.aten._shape_as_tensor"(%0) : (!torch_deviceindex) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%1) : (!torch_deviceindex) -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0) : (!torch_vtensor, !torch_deviceindex) -> !torch_vtensor
      %7 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_deviceindex) -> !torch_vtensor
      %8 = "torch.aten.cat"(%4, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.cat"(%8, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%9, %6) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()