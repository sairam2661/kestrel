"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor) -> !torch.vtensor, sym_name = "adjust_shape_function_arg$scalar"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor, !torch.vtensor, !torch.int) -> !torch.vtensor
    "func.return"(%1) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

