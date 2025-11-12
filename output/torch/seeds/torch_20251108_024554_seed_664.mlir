"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_bool) -> !torch_bool, sym_name = "torch_custom_logic"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_bool):
    %0 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %arg1) : (!torch_vtensor, !torch_bool, !torch_bool) -> !torch_vtensor
    %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> !torch_list_int
    %2 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_bool) -> !torch_vtensor
    %3 = "torch.aten.cat"(%1, %2) : (!torch_list_int, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.eq.Tensor"(%3, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
    "func.return"(%4) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()