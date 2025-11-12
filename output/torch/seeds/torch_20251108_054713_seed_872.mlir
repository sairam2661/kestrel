"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %1 = "torch.prim.ListConstruct"(%0) : (!torch_str) -> !list
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.prim.NumToTensor.Scalar"() <{value = 42 : i32}> : () -> !torch_int
    %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
    %5 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %3, %2, %2, %2) : (!torch_vtensor, !torch_int, !torch_none, !torch_none, !torch_none) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()