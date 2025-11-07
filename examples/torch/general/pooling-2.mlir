"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?,?],f32>) -> !torch.vtensor<[?,?,?,?,?],f32>, sym_name = "forward_max_pool3d"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %8 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %9 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %10 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %11 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %12 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %13 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %14 = "torch.prim.ListConstruct"(%3, %4, %5) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %15 = "torch.prim.ListConstruct"(%6, %7, %8) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %16 = "torch.prim.ListConstruct"(%9, %10, %11) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %17 = "torch.aten.max_pool3d"(%arg0, %13, %14, %15, %16, %12) : (!torch.vtensor<[?,?,?,?,?],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[?,?,?,?,?],f32>
    "func.return"(%17) : (!torch.vtensor<[?,?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

