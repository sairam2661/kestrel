"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzzing_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_tensor
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_tensor
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_tensor, !torch_tensor) -> !torch_list
      %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %3, %4) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()