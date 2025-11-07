"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,5],f32>, !torch.vtensor<[5,5],f32>) -> !torch.vtensor<[5,5],i1>, sym_name = "torch.aten.isclose$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,5],f32>, %arg1: !torch.vtensor<[5,5],f32>):
    %0 = "torch.constant.float"() <{value = 1.000000e-08 : f64}> : () -> !torch.float
    %1 = "torch.constant.float"() <{value = 1.000000e-05 : f64}> : () -> !torch.float
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.aten.isclose"(%arg0, %arg1, %1, %0, %2) : (!torch.vtensor<[5,5],f32>, !torch.vtensor<[5,5],f32>, !torch.float, !torch.float, !torch.bool) -> !torch.vtensor<[5,5],i1>
    "func.return"(%3) : (!torch.vtensor<[5,5],i1>) -> ()
  }) : () -> ()
}) : () -> ()

