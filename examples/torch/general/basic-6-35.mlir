"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,6,4],f32>) -> !torch.vtensor<[1,2,3,4],f32>, sym_name = "torch.aten.unflatten.int$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,6,4],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.unflatten.int"(%arg0, %0, %3) : (!torch.vtensor<[1,6,4],f32>, !torch.int, !torch.list<int>) -> !torch.vtensor<[1,2,3,4],f32>
    "func.return"(%4) : (!torch.vtensor<[1,2,3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

