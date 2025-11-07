"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,2,?,4,?],f32>) -> !torch.vtensor<[?],f32>, sym_name = "torch.aten.view$multiDynamicsInSourceOfCollapse"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,2,?,4,?],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %2 = "torch.aten.view"(%arg0, %1) : (!torch.vtensor<[?,2,?,4,?],f32>, !torch.list<int>) -> !torch.vtensor<[?],f32>
    "func.return"(%2) : (!torch.vtensor<[?],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

