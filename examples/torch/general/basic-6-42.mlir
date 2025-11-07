"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.zeros$basic"}> ({
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.prim.ListConstruct"(%1, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.zeros"(%3, %2, %2, %2, %2) : (!torch.list<int>, !torch.none, !torch.none, !torch.none, !torch.none) -> !torch.vtensor<[3,4],f32>
    "func.return"(%4) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

