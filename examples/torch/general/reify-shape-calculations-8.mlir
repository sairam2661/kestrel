"builtin.module"() ({
  "func.func"() <{function_type = (!torch.number) -> !torch.vtensor, sym_name = "adjust_shape_function_arg$number"}> ({
  ^bb0(%arg0: !torch.number):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.aten.arange"(%arg0, %0, %0, %0, %0) : (!torch.number, !torch.none, !torch.none, !torch.none, !torch.none) -> !torch.vtensor
    "func.return"(%1) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

