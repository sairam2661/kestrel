"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?,?],f32>) -> !torch.vtensor<[?,120,4,64],f32>, sym_name = "torch.aten.reshape$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 120 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 64 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.aten.reshape"(%arg0, %4) : (!torch.vtensor<[?,?,?,?,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,120,4,64],f32>
    "func.return"(%5) : (!torch.vtensor<[?,120,4,64],f32>) -> ()
  }) : () -> ()
}) : () -> ()

