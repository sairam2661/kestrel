"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "view_as_flatten_dynamic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.aten.size.int"(%arg0, %2) : (!torch.vtensor<[?,?,?,?],f32>, !torch.int) -> !torch.int
    %4 = "torch.aten.size.int"(%arg0, %1) : (!torch.vtensor<[?,?,?,?],f32>, !torch.int) -> !torch.int
    %5 = "torch.prim.ListConstruct"(%3, %4, %0) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.aten.view"(%arg0, %5) : (!torch.vtensor<[?,?,?,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%6) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

