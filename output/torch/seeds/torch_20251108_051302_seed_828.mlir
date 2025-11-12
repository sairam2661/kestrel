"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_complex_concat_and_shape"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.eq.Tensor"(%arg2, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_int
      %4 = "torch.aten.size.int"(%arg1, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %5 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_int) -> !torch_vtensor
      %6 = "torch.prim.ListConstruct"(%arg0, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %7 = "torch.aten.cat"(%6, %0) : (!torch_list, !torch_int) -> !torch_vtensor
      %8 = "torch.aten._make_per_tensor_quantized_tensor"(%0, %7, %1, %1) : (!torch_int, !torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()