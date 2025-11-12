"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_tensor_complexity"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %3 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_float
    %4 = "torch.aten.div.Tensor"(%2, %3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()