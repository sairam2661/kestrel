"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.unfold$rank_zero"}> ({
  ^bb0(%arg0: !torch.vtensor<[],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.aten.unfold"(%arg0, %0, %1, %1) : (!torch.vtensor<[],f32>, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1],f32>
    "func.return"(%2) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

