"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "fuzzing_function"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
      %0 = "torch.aten.size.int"(%arg0, %arg1) : (!torch_vtensor, !torch_int) -> !torch_int
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
      %2 = "torch.aten.add.Tensor"(%arg0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%2, %arg1, %arg1, %arg1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.cat"(%3, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()