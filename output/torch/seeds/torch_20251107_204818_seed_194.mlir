"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_float
    %2 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.add.Tensor"(%2, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.sin"(%3) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.relu"(%4) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()