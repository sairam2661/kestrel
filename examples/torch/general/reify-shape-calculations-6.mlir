"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor) -> !torch.vtensor, sym_name = "adjust_shape_function_arg$optional_tensor"}> ({
  ^bb0(%arg0: !torch.vtensor):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %2 = "torch.constant.float"() <{value = 1.000000e-05 : f64}> : () -> !torch.float
    %3 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torch.float
    %4 = "torch.constant.none"() : () -> !torch.none
    %5 = "torch.derefine"(%arg0) : (!torch.vtensor) -> !torch.optional<vtensor>
    %6 = "torch.aten.batch_norm"(%arg0, %5, %4, %4, %4, %0, %3, %2, %1) : (!torch.vtensor, !torch.optional<vtensor>, !torch.none, !torch.none, !torch.none, !torch.bool, !torch.float, !torch.float, !torch.bool) -> !torch.vtensor
    "func.return"(%6) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

