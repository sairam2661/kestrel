"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>) -> !torch.vtensor<[3,4,5],f32>, sym_name = "torch.aten.view$castingView"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.view"(%arg0, %3) : (!torch.vtensor<[?,?,?],f32>, !torch.list<int>) -> !torch.vtensor<[3,4,5],f32>
    "func.return"(%4) : (!torch.vtensor<[3,4,5],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

