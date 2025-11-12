"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_torch"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_list
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_list
      %2 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_vtensor
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %4, %3, %3) : (!torch_vtensor, !torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %6 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()