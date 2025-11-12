"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor0xf32, !torch_vtensor0xf32) -> !torch_vtensor0xi1, sym_name = "torch.aten.eq.Tensor$basic"}> ({
  ^bb0(%arg0: !torch_vtensor0xf32, %arg1: !torch_vtensor0xf32):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor0xf32, !torch_vtensor0xf32) -> !torch_vtensor0xi1
    "func.return"(%0) : (!torch_vtensor0xi1) -> ()
  }) : () -> ()
}) : () -> ()