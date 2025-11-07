"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,64,112],f32>) -> !torch.vtensor<[1,64,56],f32>, sym_name = "torch.aten.max_pool1d$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,64,112],f32>):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%3) : (!torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%2) : (!torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %8 = "torch.aten.max_pool1d"(%arg0, %4, %5, %6, %7, %0) : (!torch.vtensor<[1,64,112],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> !torch.vtensor<[1,64,56],f32>
    "func.return"(%8) : (!torch.vtensor<[1,64,56],f32>) -> ()
  }) : () -> ()
}) : () -> ()

