"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "torch_unusual_combination"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> i64
      %3 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> i64
      %4 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torch_vtensor
      %5 = "torch.prim.NumToTensor.Scalar"(%3) : (i64) -> !torch_vtensor
      %6 = "torch.aten.eq.Tensor"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %6) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%7, %6) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()