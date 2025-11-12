"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.add.Tensor"(%arg2, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.size.int"(%1) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
    %4 = "torch.aten.cat"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()