"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "test_unusual_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()