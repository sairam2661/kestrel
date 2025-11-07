"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.int, !torch.int) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.view$dynamictest"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.int, %arg2: !torch.int):
    %0 = "torch.prim.ListConstruct"(%arg1, %arg2) : (!torch.int, !torch.int) -> !torch.list<int>
    %1 = "torch.aten.view"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,?],f32>
    "func.return"(%1) : (!torch.vtensor<[?,?],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes, torch.disable_legacy_view} : () -> ()
}) : () -> ()

