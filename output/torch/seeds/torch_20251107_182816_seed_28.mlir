"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %3 = "torch.aten.add"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.mul"(%3, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %5 = "torch.aten.relu"(%4) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()