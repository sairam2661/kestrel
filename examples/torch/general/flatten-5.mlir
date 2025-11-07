"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.flatten.using_ints$rank0"}> ({
  ^bb0(%arg0: !torch.vtensor<[],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.aten.flatten.using_ints"(%arg0, %0, %0) : (!torch.vtensor<[],f32>, !torch.int, !torch.int) -> !torch.vtensor<[1],f32>
    "func.return"(%1) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

