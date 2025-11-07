"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],f64>) -> (!torch.vtensor<[3,4],f64>, !torch.vtensor<[3,4],f64>), sym_name = "torch.aten.uniform$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],f64>):
    %0 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.float"() <{value = 1.000000e+01 : f64}> : () -> !torch.float
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.uniform"(%arg0, %0, %1, %2) : (!torch.vtensor<[3,4],f64>, !torch.float, !torch.float, !torch.none) -> !torch.vtensor<[3,4],f64>
    "func.return"(%3, %3) : (!torch.vtensor<[3,4],f64>, !torch.vtensor<[3,4],f64>) -> ()
  }) : () -> ()
}) : () -> ()

