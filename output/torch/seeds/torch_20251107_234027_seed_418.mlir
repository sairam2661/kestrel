"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 0.1 : f32}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.mul.Tensor"(%2, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %4 = "torch.aten.sub.Tensor"(%3, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.div.Tensor"(%4, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()