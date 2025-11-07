"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,5],f32>) -> !torch.vtensor<[3,3],f32>, sym_name = "torch.aten.as_strided$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,5],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%2, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.aten.as_strided"(%arg0, %4, %5, %0) : (!torch.vtensor<[5,5],f32>, !torch.list<int>, !torch.list<int>, !torch.none) -> !torch.vtensor<[3,3],f32>
    "func.return"(%6) : (!torch.vtensor<[3,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

