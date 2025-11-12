"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_dialect_tensor_ops"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_bool) -> !torch_vtensor
      %2 = "torch.aten.size.int"(%1) : (!torch_vtensor) -> !torch_int
      %3 = "torch.constant.float"() <{value = 1.5 : f32}> : () -> !torch_float
      %4 = "torch.aten.view"(%1, %2, %3) : (!torch_vtensor, !torch_int, !torch_float) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()