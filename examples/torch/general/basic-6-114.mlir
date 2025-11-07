"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,3,4],f32>) -> !torch.vtensor<[2,3,4,4],f32>, sym_name = "torch.aten.diag_embed$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,3,4],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = -2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %3 = "torch.aten.diag_embed"(%arg0, %0, %1, %2) : (!torch.vtensor<[2,3,4],f32>, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[2,3,4,4],f32>
    "func.return"(%3) : (!torch.vtensor<[2,3,4,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

