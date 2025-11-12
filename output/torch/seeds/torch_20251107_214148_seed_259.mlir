"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.prim.NumToTensor.Scalar"() <{value = 10 : i64}> : () -> !torch_vtensor
    %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %1, 1.0, 0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, f64, i64) -> !torch_vtensor
    %3 = "torch.aten.size.int"(%arg2) : (!torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.cat"(%4) : (!torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()