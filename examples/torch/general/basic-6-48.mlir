"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,512,7,7],f32>) -> !torch.vtensor<[1,512,1,1],f32>, sym_name = "torch.aten.avg_pool2d$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,512,7,7],f32>):
    %0 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.none"() : () -> !torch.none
    %5 = "torch.prim.ListConstruct"(%0, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.aten.avg_pool2d"(%arg0, %5, %6, %7, %3, %3, %4) : (!torch.vtensor<[1,512,7,7],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[1,512,1,1],f32>
    "func.return"(%8) : (!torch.vtensor<[1,512,1,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

