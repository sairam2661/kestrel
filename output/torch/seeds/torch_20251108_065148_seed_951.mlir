"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    %2 = "torch.aten.mul.Tensor"(%1, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.str"() <{value = "relu"}> : () -> !torch_str
    %4 = "torch.aten.relu"(%2) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %6 = "torch.aten.add.Tensor"(%4, %5) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.view"(%6, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()