"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[10,3,?,2,3],f32>) -> !torch.vtensor<[2,3,5,?,6],f32>, sym_name = "torch.aten.view$singleUnknownMatches0"}> ({
  ^bb0(%arg0: !torch.vtensor<[10,3,?,2,3],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%1, %0, %3, %4, %2) : (!torch.int, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.aten.view"(%arg0, %5) : (!torch.vtensor<[10,3,?,2,3],f32>, !torch.list<int>) -> !torch.vtensor<[2,3,5,?,6],f32>
    "func.return"(%6) : (!torch.vtensor<[2,3,5,?,6],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

