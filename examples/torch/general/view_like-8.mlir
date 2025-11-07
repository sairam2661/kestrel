"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.view$to_rank1"}> ({
  ^bb0(%arg0: !torch.vtensor<[],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %2 = "torch.aten.view"(%arg0, %1) : (!torch.vtensor<[],f32>, !torch.list<int>) -> !torch.vtensor<[1],f32>
    "func.return"(%2) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

