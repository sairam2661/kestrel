"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor) -> !torch.vtensor, sym_name = "basic"}> ({
  ^bb0(%arg0: !torch.vtensor):
    %0 = "torch.aten.tanh"(%arg0) : (!torch.vtensor) -> !torch.vtensor
    "func.return"(%0) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

