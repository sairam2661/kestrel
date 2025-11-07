"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,4,5],f32>) -> !torch.vtensor<[1,1,2,7],f32>, sym_name = "torch.aten.upsample_nearest2d.vec$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,4,5],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.upsample_nearest2d.vec"(%arg0, %3, %0) : (!torch.vtensor<[1,1,4,5],f32>, !torch.list<int>, !torch.none) -> !torch.vtensor<[1,1,2,7],f32>
    "func.return"(%4) : (!torch.vtensor<[1,1,2,7],f32>) -> ()
  }) : () -> ()
}) : () -> ()

