"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,3],f32>) -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.transpose$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,3],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.aten.transpose.int"(%arg0, %0, %1) : (!torch.vtensor<[4,3],f32>, !torch.int, !torch.int) -> !torch.vtensor<[3,4],f32>
    "func.return"(%2) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

