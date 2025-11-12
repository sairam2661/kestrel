"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "fuzzing_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor, %arg3: !torch_int):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %arg2) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%arg0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.prim.NumToTensor.Scalar"(%arg3) : (!torch_int) -> !torch_vtensor
    %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten._shape_as_tensor"(%4) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()