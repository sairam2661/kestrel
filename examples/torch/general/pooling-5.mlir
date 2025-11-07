"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,3,7,64,56],f32>) -> !torch.vtensor<[1,3,4,31,54],f32>, sym_name = "forward_avg_pool3d"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,3,7,64,56],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %8 = "torch.prim.ListConstruct"(%6, %7, %7) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.prim.ListConstruct"(%5, %4, %5) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %10 = "torch.prim.ListConstruct"(%3, %5, %5) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %11 = "torch.aten.avg_pool3d"(%arg0, %8, %9, %10, %1, %2, %0) : (!torch.vtensor<[1,3,7,64,56],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[1,3,4,31,54],f32>
    "func.return"(%11) : (!torch.vtensor<[1,3,4,31,54],f32>) -> ()
  }) : () -> ()
}) : () -> ()

