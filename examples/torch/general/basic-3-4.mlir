"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor) -> !torch.vtensor, sym_name = "torch.aten.mm$no_convert$missing_dtype"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor):
    %0 = "torch.aten.mm"(%arg0, %arg1) : (!torch.vtensor, !torch.vtensor) -> !torch.vtensor
    "func.return"(%0) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

