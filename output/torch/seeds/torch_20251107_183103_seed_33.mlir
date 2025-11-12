"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_fuzzer_function"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> i64
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (i64) -> !torch_vtensor
      %3 = "torch.prim.ListConstruct"(%0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %4 = "torch.aten.eq.Tensor"(%0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%4, %1, %1, %1) : (!torch_vtensor, i64, i64, i64) -> !torch_vtensor
      %6 = "torch.aten.cat"(%3) : (!torch_list) -> !torch_vtensor
      %7 = "torch.aten._shape_as_tensor"(%6) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()