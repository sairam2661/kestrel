"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add_with_constants"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor
    %1 = "torch.constant.int"() <{value = 42 : i32}> : () -> !torch_vtensor
    %2 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_vtensor
    %3 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%3, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.add.Tensor"(%4, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%5, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()