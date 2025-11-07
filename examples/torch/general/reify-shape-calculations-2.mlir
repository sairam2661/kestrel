"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.float) -> !torch.vtensor, sym_name = "adjust_shape_function_arg$torch.any"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.float):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.aten.uniform"(%arg0, %arg1, %arg1, %0) : (!torch.vtensor, !torch.float, !torch.float, !torch.none) -> !torch.vtensor
    "func.return"(%1) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

