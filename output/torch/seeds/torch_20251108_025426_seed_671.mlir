"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.prim.NumToTensor.Scalar"() <{value = 5 : i64}> : () -> !torch_vtensor
    %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %2, %3) : (!torch_vtensor, !torch_vtensor, f32, !torch_vtensor) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()