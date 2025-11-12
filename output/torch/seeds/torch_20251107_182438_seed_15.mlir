"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_LITERAL, !torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL, sym_name = "combined_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_LITERAL, %arg1: !torch_vtensor_LITERAL):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_LITERAL, !torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL
      %1 = "torch.aten._make_per_tensor_quantized_tensor"(%0, %0, %0, %0) : (!torch_vtensor_LITERAL, !torch_vtensor_LITERAL, !torch_vtensor_LITERAL, !torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL
      %2 = "torch.aten._shape_as_tensor"(%1) : (!torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL
      %4 = "torch.aten.eq.Tensor"(%3, %3) : (!torch_vtensor_LITERAL, !torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL
      %5 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_LITERAL, !torch_vtensor_LITERAL) -> !torch_vtensor_LITERAL
      "func.return"(%5) : (!torch_vtensor_LITERAL) -> ()
  }) : () -> ()
}) : () -> ()