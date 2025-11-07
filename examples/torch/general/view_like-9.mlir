"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1],f32>) -> !torch.vtensor<[],f32>, sym_name = "torch.aten.view$to_rank0"}> ({
  ^bb0(%arg0: !torch.vtensor<[1],f32>):
    %0 = "torch.prim.ListConstruct"() : () -> !torch.list<int>
    %1 = "torch.aten.view"(%arg0, %0) : (!torch.vtensor<[1],f32>, !torch.list<int>) -> !torch.vtensor<[],f32>
    "func.return"(%1) : (!torch.vtensor<[],f32>) -> ()
  }) : () -> ()
}) : () -> ()

