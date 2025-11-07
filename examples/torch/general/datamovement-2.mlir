"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,4,4],f32>) -> !torch.vtensor<[1,1,8,9],f32>, sym_name = "torch.aten.reflection_pad2d"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,4,4],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.prim.ListConstruct"(%0, %1, %0, %0) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %3 = "torch.aten.reflection_pad2d"(%arg0, %2) : (!torch.vtensor<[1,1,4,4],f32>, !torch.list<int>) -> !torch.vtensor<[1,1,8,9],f32>
    "func.return"(%3) : (!torch.vtensor<[1,1,8,9],f32>) -> ()
  }) : () -> ()
}) : () -> ()

