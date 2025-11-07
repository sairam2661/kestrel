"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,56,56],f32>) -> !torch.vtensor<[1,1,27,27],f32>, sym_name = "torch.aten.max_pool2d$zero_pad_with_sliced_input"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,56,56],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%3, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %8 = "torch.prim.ListConstruct"(%6, %7) : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %10 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %11 = "torch.prim.ListConstruct"(%9, %10) : (!torch.int, !torch.int) -> !torch.list<int>
    %12 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %13 = "torch.aten.max_pool2d"(%arg0, %2, %5, %8, %11, %12) : (!torch.vtensor<[1,1,56,56],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[1,1,27,27],f32>
    "func.return"(%13) : (!torch.vtensor<[1,1,27,27],f32>) -> ()
  }) : () -> ()
}) : () -> ()

