"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_dialects_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.none"() : () -> !torch_none
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %2 = "torch.constant.str"() <{value = "example"}> : () -> !torch_str
      %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_bool) -> !torch_tensor
      %5 = "torch.aten.cat"(%1, %4) : (!torch_list, !torch_tensor) -> !torch_tensor
      "func.return"(%5) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()