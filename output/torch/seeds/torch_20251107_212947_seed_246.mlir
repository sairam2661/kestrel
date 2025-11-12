"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_dialects_test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %3 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.constant.none"() : () -> !torch_none
      %5 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %6 = "torch.aten.view"(%arg0, %5) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()