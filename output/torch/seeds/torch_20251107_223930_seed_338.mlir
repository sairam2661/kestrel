"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_combination"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %c0, %c1, %c0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.cat"(%arg0, %arg1, %c0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()