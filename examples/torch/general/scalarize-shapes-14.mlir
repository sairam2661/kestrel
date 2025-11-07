"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?,2,4],f32>) -> !torch.vtensor<[?,?,?,4],f32>, sym_name = "view_as_flatten_mid"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?,2,4],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %4 = "torch.aten.size.int"(%arg0, %2) : (!torch.vtensor<[?,?,?,?,2,4],f32>, !torch.int) -> !torch.int
    %5 = "torch.aten.size.int"(%arg0, %1) : (!torch.vtensor<[?,?,?,?,2,4],f32>, !torch.int) -> !torch.int
    %6 = "torch.prim.ListConstruct"(%4, %5, %0, %3) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.aten.view"(%arg0, %6) : (!torch.vtensor<[?,?,?,?,2,4],f32>, !torch.list<int>) -> !torch.vtensor<[?,?,?,4],f32>
    "func.return"(%7) : (!torch.vtensor<[?,?,?,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

