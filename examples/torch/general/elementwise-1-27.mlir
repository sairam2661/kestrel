"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,64],f32>) -> !torch.vtensor<[64,4],f32>, sym_name = "torch.aten.permute$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,64],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.prim.ListConstruct"(%1, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %3 = "torch.aten.permute"(%arg0, %2) : (!torch.vtensor<[4,64],f32>, !torch.list<int>) -> !torch.vtensor<[64,4],f32>
    "func.return"(%3) : (!torch.vtensor<[64,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

