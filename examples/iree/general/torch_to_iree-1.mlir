"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,3,4],f32>) -> (!torch.vtensor<[2,3,4],f32>, !torch.vtensor<[2,3,4],f32>), sym_name = "main"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,3,4],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.constant.int"() <{value = 12 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %7 = "torch.prim.ListConstruct"(%4, %5, %6) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.constant.none"() : () -> !torch.none
    %9 = "torch.constant.none"() : () -> !torch.none
    %10 = "torch.constant.device"() <{value = "cpu"}> : () -> !torch.Device
    %11 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %12 = "torch.aten.empty_strided"(%3, %7, %8, %9, %10, %11) : (!torch.list<int>, !torch.list<int>, !torch.none, !torch.none, !torch.Device, !torch.bool) -> !torch.vtensor<[2,3,4],f32>
    %13 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %14 = "torch.aten.copy"(%arg0, %12, %13) : (!torch.vtensor<[2,3,4],f32>, !torch.vtensor<[2,3,4],f32>, !torch.bool) -> !torch.vtensor<[2,3,4],f32>
    "func.return"(%14, %14) : (!torch.vtensor<[2,3,4],f32>, !torch.vtensor<[2,3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

