"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[6,8],f32>, !torch.vtensor<[6,1],f32>) -> !torch.vtensor<[6,8],f32>, sym_name = "torch.aten.slice_scatter$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[6,8],f32>, %arg1: !torch.vtensor<[6,1],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.aten.slice_scatter"(%arg0, %arg1, %0, %1, %0, %0) : (!torch.vtensor<[6,8],f32>, !torch.vtensor<[6,1],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[6,8],f32>
    "func.return"(%2) : (!torch.vtensor<[6,8],f32>) -> ()
  }) : () -> ()
}) : () -> ()

