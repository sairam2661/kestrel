"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "example"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %arg1, %arg1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.cat"(%arg0, %arg1) <{dim = 0}> : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.eq.Tensor"(%2, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> i64
    %6 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%3, %6) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()