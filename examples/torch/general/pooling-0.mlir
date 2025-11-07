"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "forward_max_pool1d"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%2) : (!torch.int) -> !torch.list<int>
    %8 = "torch.prim.ListConstruct"(%3) : (!torch.int) -> !torch.list<int>
    %9 = "torch.aten.max_pool1d"(%arg0, %5, %6, %7, %8, %4) : (!torch.vtensor<[?,?,?],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%9) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

