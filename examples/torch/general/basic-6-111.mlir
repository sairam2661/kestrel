"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[3,4],si64>, sym_name = "torch.aten.empty.memory_format$basic"}> ({
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%3, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.constant.device"() <{value = "cpu"}> : () -> !torch.Device
    %7 = "torch.aten.empty.memory_format"(%5, %4, %2, %6, %1, %2) : (!torch.list<int>, !torch.int, !torch.none, !torch.Device, !torch.bool, !torch.none) -> !torch.vtensor<[3,4],si64>
    %8 = "torch.aten.fill.Scalar"(%7, %0) : (!torch.vtensor<[3,4],si64>, !torch.int) -> !torch.vtensor<[3,4],si64>
    "func.return"(%8) : (!torch.vtensor<[3,4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

