"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[200,200,26],f64>) -> !torch.vtensor<[200,200,26],f64>, sym_name = "randNoneDtype"}> ({
  ^bb0(%arg0: !torch.vtensor<[200,200,26],f64>):
    %0 = "torch.constant.int"() <{value = 200 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 200 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 26 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.constant.none"() : () -> !torch.none
    %5 = "torch.constant.none"() : () -> !torch.none
    %6 = "torch.constant.device"() <{value = "cpu"}> : () -> !torch.Device
    %7 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %8 = "torch.aten.rand"(%3, %4, %5, %6, %7) : (!torch.list<int>, !torch.none, !torch.none, !torch.Device, !torch.bool) -> !torch.vtensor<[200,200,26],f64>
    "func.return"(%8) : (!torch.vtensor<[200,200,26],f64>) -> ()
  }) : () -> ()
}) : () -> ()

