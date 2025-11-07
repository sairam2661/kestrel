"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,2],f32>) -> !torch.vtensor<[3,4,2],f32>, sym_name = "torch.aten.broadcast_to$fold"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,2],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.broadcast_to"(%arg0, %3) : (!torch.vtensor<[3,4,2],f32>, !torch.list<int>) -> !torch.vtensor<[3,4,2],f32>
    "func.return"(%4) : (!torch.vtensor<[3,4,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

