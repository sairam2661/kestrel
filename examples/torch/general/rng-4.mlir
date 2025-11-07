"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[32,64],f64>) -> !torch.vtensor<[32,64],f64>, sym_name = "torch.aten.normal_functional"}> ({
  ^bb0(%arg0: !torch.vtensor<[32,64],f64>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %2 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch.float
    %3 = "torch.aten.normal_functional"(%arg0, %1, %2, %0) : (!torch.vtensor<[32,64],f64>, !torch.float, !torch.float, !torch.none) -> !torch.vtensor<[32,64],f64>
    "func.return"(%3) : (!torch.vtensor<[32,64],f64>) -> ()
  }) : () -> ()
}) : () -> ()

