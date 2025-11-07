"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,5,7,3,4],f32>) -> !torch.vtensor<[4,5,11,7,8],f32>, sym_name = "torch.aten.reflection_pad3d$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,5,7,3,4],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.prim.ListConstruct"(%0, %0, %0, %0, %0, %0) : (!torch.int, !torch.int, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %2 = "torch.aten.reflection_pad3d"(%arg0, %1) : (!torch.vtensor<[4,5,7,3,4],f32>, !torch.list<int>) -> !torch.vtensor<[4,5,11,7,8],f32>
    "func.return"(%2) : (!torch.vtensor<[4,5,11,7,8],f32>) -> ()
  }) : () -> ()
}) : () -> ()

