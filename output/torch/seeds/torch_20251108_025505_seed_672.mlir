"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list, !torch_int) -> !torch_bool, sym_name = "complex_operation"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list, %arg2: !torch_int):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_list
      %1 = "torch.prim.NumToTensor.Scalar"(%arg2) : (!torch_int) -> !torch_vtensor
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_list, !torch_vtensor) -> !torch_bool
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg2, %arg2, %arg2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.cat"(%arg1) : (!torch_list) -> !torch_vtensor
      %5 = "torch.vtensor.literal"() <{value = dense<1.0> : tensor<f32>}> : () -> !torch_vtensor
      "func.return"(%2) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()