"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,2,3],f64>) -> !torch.vtensor<[1,1,8,9],f64>, sym_name = "torch.aten.upsample_nearest2d$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,2,3],f64>):
    %0 = "torch.constant.float"() <{value = 4.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.float"() <{value = 3.000000e+00 : f64}> : () -> !torch.float
    %2 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 9 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.aten.upsample_nearest2d"(%arg0, %4, %0, %1) : (!torch.vtensor<[1,1,2,3],f64>, !torch.list<int>, !torch.float, !torch.float) -> !torch.vtensor<[1,1,8,9],f64>
    "func.return"(%5) : (!torch.vtensor<[1,1,8,9],f64>) -> ()
  }) : () -> ()
}) : () -> ()

