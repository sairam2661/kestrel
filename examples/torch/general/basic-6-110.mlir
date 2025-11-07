"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,64,56],f32>) -> !torch.vtensor<[1,59,51],f32>, sym_name = "avgPool2dCHWInput"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,64,56],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %6 = "torch.prim.ListConstruct"(%5, %5) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%4, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.aten.avg_pool2d"(%arg0, %6, %7, %8, %2, %1, %0) : (!torch.vtensor<[1,64,56],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[1,59,51],f32>
    "func.return"(%9) : (!torch.vtensor<[1,59,51],f32>) -> ()
  }) : () -> ()
}) : () -> ()

