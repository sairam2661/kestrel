"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[8,4,?],f32>, sym_name = "torch.aten.broadcast_to$dynamic_implicit"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%2, %1, %0) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.broadcast_to"(%arg0, %3) : (!torch.vtensor<[?,?],f32>, !torch.list<int>) -> !torch.vtensor<[8,4,?],f32>
    "func.return"(%4) : (!torch.vtensor<[8,4,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

