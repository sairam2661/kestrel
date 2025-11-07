"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[],f32>, sym_name = "torch.aten.view$zerod"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.prim.ListConstruct"() : () -> !torch.list<int>
    %1 = "torch.aten.view"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.list<int>) -> !torch.vtensor<[],f32>
    "func.return"(%1) : (!torch.vtensor<[],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes, torch.disable_legacy_view} : () -> ()
}) : () -> ()

