"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,5,6],f32>) -> !torch.vtensor<[4,5,6],f32>, sym_name = "test_reduce_mean_dim$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,5,6],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.constant.none"() : () -> !torch.none
    %4 = "torch.aten.mean.dim"(%arg0, %1, %2, %3) : (!torch.vtensor<[3,4,5,6],f32>, !torch.list<int>, !torch.bool, !torch.none) -> !torch.vtensor<[4,5,6],f32>
    "func.return"(%4) : (!torch.vtensor<[4,5,6],f32>) -> ()
  }) : () -> ()
}) : () -> ()

