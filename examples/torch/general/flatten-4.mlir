"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,3,2,2],f32>) -> !torch.vtensor<[?,12],f32>, sym_name = "torch.aten.flatten.using_ints$flatten_back"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,3,2,2],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %2 = "torch.aten.flatten.using_ints"(%arg0, %0, %1) : (!torch.vtensor<[3,3,2,2],f32>, !torch.int, !torch.int) -> !torch.vtensor<[?,12],f32>
    "func.return"(%2) : (!torch.vtensor<[?,12],f32>) -> ()
  }) : () -> ()
}) : () -> ()

