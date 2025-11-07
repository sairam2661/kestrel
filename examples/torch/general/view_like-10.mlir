"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,1,2,1,2],f32>) -> !torch.vtensor<[2,2,1,2],f32>, sym_name = "torch.aten.squeeze.dim$0$static"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,1,2,1,2],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.squeeze.dim"(%arg0, %0) : (!torch.vtensor<[2,1,2,1,2],f32>, !torch.int) -> !torch.vtensor<[2,2,1,2],f32>
    "func.return"(%1) : (!torch.vtensor<[2,2,1,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

