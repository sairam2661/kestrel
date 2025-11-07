"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,512,10],f32>) -> !torch.vtensor<[1,512,12],f32>, sym_name = "forward_avg_pool1d"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,512,10],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %3 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %4 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %6 = "torch.aten.avg_pool1d"(%arg0, %3, %4, %5, %1, %2) : (!torch.vtensor<[1,512,10],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool) -> !torch.vtensor<[1,512,12],f32>
    "func.return"(%6) : (!torch.vtensor<[1,512,12],f32>) -> ()
  }) : () -> ()
}) : () -> ()

