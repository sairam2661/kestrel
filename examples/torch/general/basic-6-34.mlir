"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[10,3,8,9,3,4],f32>) -> !torch.vtensor<[10,3,?,4],f32>, sym_name = "torch.aten.flatten.using_ints$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[10,3,8,9,3,4],f32>):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.aten.flatten.using_ints"(%arg0, %1, %0) : (!torch.vtensor<[10,3,8,9,3,4],f32>, !torch.int, !torch.int) -> !torch.vtensor<[10,3,?,4],f32>
    "func.return"(%2) : (!torch.vtensor<[10,3,?,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

