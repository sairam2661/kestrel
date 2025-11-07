"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[2,3],f32>, sym_name = "torch.prim.Loop$for_with_tensor_arg"}> ({
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %7 = "torch.constant.none"() : () -> !torch.none
    %8 = "torch.prim.ListConstruct"(%3, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.aten.zeros"(%8, %6, %7, %7, %7) : (!torch.list<int>, !torch.int, !torch.none, !torch.none, !torch.none) -> !torch.vtensor<[2,3],f32>
    %10 = "torch.aten.ones"(%8, %6, %7, %7, %7) : (!torch.list<int>, !torch.int, !torch.none, !torch.none, !torch.none) -> !torch.vtensor<[2,3],f32>
    %11 = "torch.prim.Loop"(%5, %0, %9) ({
    ^bb0(%arg0: !torch.int, %arg1: !torch.vtensor<[2,3],f32>):
      %12 = "torch.aten.add.Tensor"(%arg1, %10, %2) : (!torch.vtensor<[2,3],f32>, !torch.vtensor<[2,3],f32>, !torch.int) -> !torch.vtensor<[2,3],f32>
      "torch.prim.Loop.condition"(%0, %12) : (!torch.bool, !torch.vtensor<[2,3],f32>) -> ()
    }) : (!torch.int, !torch.bool, !torch.vtensor<[2,3],f32>) -> !torch.vtensor<[2,3],f32>
    "func.return"(%11) : (!torch.vtensor<[2,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

