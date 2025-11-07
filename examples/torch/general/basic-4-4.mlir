"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,64],f32>) -> !torch.vtensor<[4,64],f32>, sym_name = "torch.aten.contiguous"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,64],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.aten.contiguous"(%arg0, %0) : (!torch.vtensor<[4,64],f32>, !torch.int) -> !torch.vtensor<[4,64],f32>
    "func.return"(%1) : (!torch.vtensor<[4,64],f32>) -> ()
  }) : () -> ()
}) : () -> ()

