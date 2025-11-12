"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_vtensor
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor
    %3 = "torch.prim.ListConstruct"(%2, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.mul"(%4, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()