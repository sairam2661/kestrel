"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[32,64],f32>, sym_name = "torch.aten.randn.generator$f32"}> ({
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.int"() <{value = 32 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 64 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.randn.generator"(%3, %0, %0, %0, %0, %0) : (!torch.list<int>, !torch.none, !torch.none, !torch.none, !torch.none, !torch.none) -> !torch.vtensor<[32,64],f32>
    "func.return"(%4) : (!torch.vtensor<[32,64],f32>) -> ()
  }) : () -> ()
}) : () -> ()

