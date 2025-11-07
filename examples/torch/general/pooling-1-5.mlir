"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>) -> (!torch.vtensor<[?,?,?],f32>, !torch.vtensor<[?,?,?],si64>), sym_name = "torch.aten.max_pool2d_with_indices"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%0, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.prim.ListConstruct"(%4, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %9:2 = "torch.aten.max_pool2d_with_indices"(%arg0, %5, %6, %7, %8, %2) : (!torch.vtensor<[?,?,?],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> (!torch.vtensor<[?,?,?],f32>, !torch.vtensor<[?,?,?],si64>)
    "func.return"(%9#0, %9#1) : (!torch.vtensor<[?,?,?],f32>, !torch.vtensor<[?,?,?],si64>) -> ()
  }) : () -> ()
}) : () -> ()

