"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,512,10],f32>) -> !torch.vtensor<[1,512,12],f32>, sym_name = "forward_avg_pool1d_countincludepad_false"}> ({
  ^bb0(%arg1: !torch.vtensor<[1,512,10],f32>):
    %15 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %16 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %17 = "torch.prim.ListConstruct"(%15) : (!torch.int) -> !torch.list<int>
    %18 = "torch.prim.ListConstruct"(%15) : (!torch.int) -> !torch.list<int>
    %19 = "torch.prim.ListConstruct"(%15) : (!torch.int) -> !torch.list<int>
    %20 = "torch.aten.avg_pool1d"(%arg1, %17, %18, %19, %16, %16) : (!torch.vtensor<[1,512,10],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool) -> !torch.vtensor<[1,512,12],f32>
    "func.return"(%20) : (!torch.vtensor<[1,512,12],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[1,1,4,4],f32>) -> !torch.vtensor<[1,1,2,2],f32>, sym_name = "forward_avgpool_2d_ceil"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,4,4],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %8 = "torch.prim.ListConstruct"(%0, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.prim.ListConstruct"(%2, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %10 = "torch.prim.ListConstruct"(%4, %5, %6, %7) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %11 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %12 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %13 = "torch.constant.none"() : () -> !torch.none
    %14 = "torch.aten.avg_pool2d"(%arg0, %8, %10, %9, %11, %12, %13) : (!torch.vtensor<[1,1,4,4],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[1,1,2,2],f32>
    "func.return"(%14) : (!torch.vtensor<[1,1,2,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

