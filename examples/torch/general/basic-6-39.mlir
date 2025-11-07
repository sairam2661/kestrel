"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,2],f32>) -> !torch.vtensor<[3,2,4],f32>, sym_name = "torch.aten.permute$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,2],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%2, %1, %0) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.permute"(%arg0, %3) : (!torch.vtensor<[3,4,2],f32>, !torch.list<int>) -> !torch.vtensor<[3,2,4],f32>
    "func.return"(%4) : (!torch.vtensor<[3,2,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

