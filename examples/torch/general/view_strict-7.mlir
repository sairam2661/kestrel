"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>, !torch.int) -> !torch.vtensor<[?,1,?,1],f32>, sym_name = "torch.aten$dynamicValOutput"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>, %arg1: !torch.int):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %2 = "torch.prim.ListConstruct"(%arg1, %0, %1, %0) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %3 = "torch.aten.view"(%arg0, %2) : (!torch.vtensor<[?,?,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,1,?,1],f32>
    "func.return"(%3) : (!torch.vtensor<[?,1,?,1],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes, torch.disable_legacy_view} : () -> ()
}) : () -> ()

