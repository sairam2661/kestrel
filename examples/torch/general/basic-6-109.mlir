"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,192,35,35],f32>) -> !torch.vtensor<[1,192,35,35],f32>, sym_name = "torch.aten.avg_pool2d.divisor_override_unsupported_value"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,192,35,35],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.int"() <{value = 9 : i64}> : () -> !torch.int
    %6 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.aten.avg_pool2d"(%arg0, %6, %7, %8, %3, %4, %5) : (!torch.vtensor<[1,192,35,35],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.int) -> !torch.vtensor<[1,192,35,35],f32>
    "func.return"(%9) : (!torch.vtensor<[1,192,35,35],f32>) -> ()
  }) : () -> ()
}) : () -> ()

