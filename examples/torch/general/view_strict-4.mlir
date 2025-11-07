"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,6,?],f32>) -> !torch.vtensor<[?,2,3,?],f32>, sym_name = "torch.aten.view$dynamictest2"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,6,?],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.aten.size.int"(%arg0, %1) : (!torch.vtensor<[?,6,?],f32>, !torch.int) -> !torch.int
    %4 = "torch.aten.size.int"(%arg0, %2) : (!torch.vtensor<[?,6,?],f32>, !torch.int) -> !torch.int
    %5 = "torch.prim.ListConstruct"(%4, %1, %0, %3) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.aten.view"(%arg0, %5) : (!torch.vtensor<[?,6,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,2,3,?],f32>
    "func.return"(%6) : (!torch.vtensor<[?,2,3,?],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes, torch.disable_legacy_view} : () -> ()
}) : () -> ()

