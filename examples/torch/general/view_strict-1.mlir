"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,2],f32>) -> !torch.vtensor<[2,3],f32>, sym_name = "torch.aten.view$twotothree"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,2],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.prim.ListConstruct"(%1, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %3 = "torch.aten.view"(%arg0, %2) : (!torch.vtensor<[3,2],f32>, !torch.list<int>) -> !torch.vtensor<[2,3],f32>
    "func.return"(%3) : (!torch.vtensor<[2,3],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes, torch.disable_legacy_view} : () -> ()
}) : () -> ()

