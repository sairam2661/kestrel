"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,224],f32>, sym_name = "torch.aten.view$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 224 : i64}> : () -> !torch.int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %3 = "torch.aten.view"(%arg0, %2) : (!torch.vtensor<[?,?,?,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,224],f32>
    "func.return"(%3) : (!torch.vtensor<[?,224],f32>) -> ()
  }) : () -> ()
}) : () -> ()

