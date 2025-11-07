"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "forward_max_pool2d"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %8 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %9 = "torch.prim.ListConstruct"(%0, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %10 = "torch.prim.ListConstruct"(%2, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %11 = "torch.prim.ListConstruct"(%4, %5) : (!torch.int, !torch.int) -> !torch.list<int>
    %12 = "torch.prim.ListConstruct"(%6, %7) : (!torch.int, !torch.int) -> !torch.list<int>
    %13 = "torch.aten.max_pool2d"(%arg0, %9, %10, %11, %12, %8) : (!torch.vtensor<[?,?,?,?],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%13) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

