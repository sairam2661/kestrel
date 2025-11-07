"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,5,6],f32>) -> !torch.vtensor<[4,5,6],f32>, sym_name = "test_reduce_sum_dims$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,5,6],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%2) : (!torch.int) -> !torch.list<int>
    %4 = "torch.aten.sum.dim_IntList"(%arg0, %3, %1, %0) : (!torch.vtensor<[3,4,5,6],f32>, !torch.list<int>, !torch.bool, !torch.none) -> !torch.vtensor<[4,5,6],f32>
    "func.return"(%4) : (!torch.vtensor<[4,5,6],f32>) -> ()
  }) : () -> ()
}) : () -> ()

