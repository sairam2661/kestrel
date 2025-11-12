"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_explore"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%1, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.float"() <{value = 3.0e+00 : f64}> : () -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()