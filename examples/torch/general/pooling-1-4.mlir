"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,256,56,56],f32>) -> !torch.vtensor<[1,256,28,28],f32>, sym_name = "torch.aten.max_pool2d$ceilon"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,256,56,56],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%0, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%4, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.aten.max_pool2d"(%arg0, %5, %6, %7, %8, %3) : (!torch.vtensor<[1,256,56,56],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[1,256,28,28],f32>
    "func.return"(%9) : (!torch.vtensor<[1,256,28,28],f32>) -> ()
  }) : () -> ()
}) : () -> ()

