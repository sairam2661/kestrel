"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor) -> !torch.vtensor, sym_name = "adjust_shape_function_arg$list"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor):
    %0 = "torch.prim.ListConstruct"(%arg1) : (!torch.vtensor) -> !torch.list<vtensor>
    %1 = "torch.aten.index.Tensor"(%arg0, %0) : (!torch.vtensor, !torch.list<vtensor>) -> !torch.vtensor
    "func.return"(%1) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

