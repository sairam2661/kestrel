"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[64,32,16,8,4],f32>) -> !torch.vtensor<[64,8,4,32,16],f32>, sym_name = "torch.aten.permute"}> ({
  ^bb0(%arg0: !torch.vtensor<[64,32,16,8,4],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torch.int, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.aten.permute"(%arg0, %5) : (!torch.vtensor<[64,32,16,8,4],f32>, !torch.list<int>) -> !torch.vtensor<[64,8,4,32,16],f32>
    "func.return"(%6) : (!torch.vtensor<[64,8,4,32,16],f32>) -> ()
  }) : () -> ()
}) : () -> ()

