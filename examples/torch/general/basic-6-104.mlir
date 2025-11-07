"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,12,128,128],f32>) -> !torch.vtensor<[1,12,128,128],f32>, sym_name = "torch.aten.fill.Scalar"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,12,128,128],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.aten.fill.Scalar"(%arg0, %0) : (!torch.vtensor<[1,12,128,128],f32>, !torch.int) -> !torch.vtensor<[1,12,128,128],f32>
    "func.return"(%1) : (!torch.vtensor<[1,12,128,128],f32>) -> ()
  }) : () -> ()
}) : () -> ()

