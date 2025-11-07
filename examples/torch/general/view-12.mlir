"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[10,?,2,3],f32>) -> !torch.vtensor<[2,5,?,6],f32>, sym_name = "torch.aten.view$dynamicInferredSame"}> ({
  ^bb0(%arg0: !torch.vtensor<[10,?,2,3],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%0, %1, %3, %2) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.aten.view"(%arg0, %4) : (!torch.vtensor<[10,?,2,3],f32>, !torch.list<int>) -> !torch.vtensor<[2,5,?,6],f32>
    "func.return"(%5) : (!torch.vtensor<[2,5,?,6],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

