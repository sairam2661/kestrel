"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "torch.aten.max_pool2d"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.prim.ListConstruct"(%0, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%0, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.aten.max_pool2d"(%arg0, %4, %5, %6, %7, %3) : (!torch.vtensor<[?,?,?,?],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%8) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

